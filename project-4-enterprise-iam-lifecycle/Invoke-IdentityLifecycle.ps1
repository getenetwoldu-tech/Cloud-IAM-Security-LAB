<#
.SYNOPSIS
    Phase 3: Automated User Onboarding and Offboarding Lifecycle Script
.DESCRIPTION
    Automates bulk user creation from a CSV file, group assignment, and offboarding/disabling workflows.
#>

[CmdletBinding()]
param(
    [Parameter(Mandatory=$false)]
    [string]$CsvPath = ".\new_hires.csv",

    [Parameter(Mandatory=$false)]
    [ValidateSet("Onboard", "Offboard")]
    [string]$Action = "Onboard",

    [Parameter(Mandatory=$false)]
    [string]$TargetUsername
)

$DomainDN = "DC=corp,DC=internal"
$UsersOU = "OU=Users,OU=EnterpriseCore,$DomainDN"
$DisabledOU = "OU=DisabledUsers,OU=EnterpriseCore,$DomainDN"

if ($Action -eq "Onboard") {
    Write-Host "Starting Automated User Onboarding Process..." -ForegroundColor Cyan

    if (-not (Test-Path $CsvPath)) {
        Write-Error "CSV file not found at path: $CsvPath"
        exit
    }

    $NewHires = Import-Csv -Path $CsvPath

    foreach ($user in $NewHires) {
        $SamAccountName = "$($user.FirstName.Substring(0,1).ToLower())$($user.LastName.ToLower())"
        $UserPrincipalName = "$SamAccountName@corp.internal"
        $DisplayName = "$($user.FirstName) $($user.LastName)"
        $SecurePassword = ConvertTo-SecureString "TempPass123!" -AsPlainText -Force

        try {
            # 1. Create Active Directory User
            New-ADUser -SamAccountName $SamAccountName `
                       -UserPrincipalName $UserPrincipalName `
                       -Name $DisplayName `
                       -GivenName $user.FirstName `
                       -Surname $user.LastName `
                       -DisplayName $DisplayName `
                       -Department $user.Department `
                       -Title $user.Title `
                       -Path $UsersOU `
                       -AccountPassword $SecurePassword `
                       -Enabled $true `
                       -ChangePasswordAtLogon $true `
                       -ErrorAction Stop

            Write-Host "[+] Successfully provisioned user: $DisplayName ($SamAccountName)" -ForegroundColor Green

            # 2. Assign Department Security Group
            $GroupName = "SG-App-$($user.Department)-Users"
            try {
                Add-ADGroupMember -Identity $GroupName -Members $SamAccountName -ErrorAction Stop
                Write-Host "    [-->] Added $SamAccountName to group $GroupName" -ForegroundColor DarkGreen
            } catch {
                Write-Warning "    [!] Could not add $SamAccountName to group $GroupName. Ensure group exists."
            }

        } catch {
            Write-Error "[!] Failed to create user $DisplayName. Error: $_"
        }
    }
}
elseif ($Action -eq "Offboard") {
    Write-Host "Starting Automated User Offboarding Process for: $TargetUsername" -ForegroundColor Cyan

    try {
        # 1. Disable the AD Account
        Set-ADUser -Identity $TargetUsername -Enabled $false -ErrorAction Stop
        Write-Host "[+] Disabled account: $TargetUsername" -ForegroundColor Yellow

        # 2. Move to Disabled OU
        Move-ADObject -Identity "CN=$TargetUsername,$UsersOU" -TargetPath $DisabledOU -ErrorAction Stop
        Write-Host "[+] Moved $TargetUsername to Disabled OU." -ForegroundColor Green

    } catch {
        Write-Error "[!] Offboarding failed for $TargetUsername. Error: $_"
    }
}
