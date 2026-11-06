<#
.SYNOPSIS
    Phase 1: Enterprise Active Directory OU and Security Group Deployment Script
.DESCRIPTION
    Creates a structured OU hierarchy and baseline security groups for automated IAM provisioning.
#>

# Define your root domain structure
$DomainDN = "DC=corp,DC=internal"
$RootOU = "OU=EnterpriseCore,$DomainDN"

Write-Host "Starting Phase 1: Creating Active Directory OU Structure..." -ForegroundColor Cyan

# 1. Create Root Enterprise OU if it doesn't exist
try {
    New-ADOrganizationalUnit -Name "EnterpriseCore" -Path $DomainDN -ProtectedFromAccidentalDeletion $false -ErrorAction Stop
    Write-Host "[+] Successfully created Root OU: EnterpriseCore" -ForegroundColor Green
} catch {
    Write-Warning "Root OU might already exist. Continuing..."
}

# 2. Create Functional Sub-OUs
$SubOUs = @("Users", "Groups", "Servers", "Workstations")

foreach ($ou in $SubOUs) {
    try {
        New-ADOrganizationalUnit -Name $ou -Path $RootOU -ProtectedFromAccidentalDeletion $false -ErrorAction Stop
        Write-Host "[+] Created Sub-OU: $ou" -ForegroundColor Green
    } catch {
        Write-Warning "Sub-OU '$ou' already exists or could not be created."
    }
}

# 3. Create Baseline Security Groups in the Groups OU
$GroupsOU = "OU=Groups,$RootOU"
$SecurityGroups = @(
    "SG-App-Finance-Users",
    "SG-App-HR-Users",
    "SG-Cloud-Admins",
    "SG-Remote-VPN-Users"
)

foreach ($group in $SecurityGroups) {
    try {
        New-ADGroup -Name $group -GroupScope Global -GroupCategory Security -Path $GroupsOU -ErrorAction Stop
        Write-Host "[+] Created Security Group: $group" -ForegroundColor Green
    } catch {
        Write-Warning "Security Group '$group' already exists."
    }
}

Write-Host "Phase 1 Structure Deployment Completed Successfully." -ForegroundColor Cyan
