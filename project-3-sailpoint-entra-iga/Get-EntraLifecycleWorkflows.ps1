<#
.SYNOPSIS
    Queries Microsoft Entra ID Governance Lifecycle Workflows using Graph API.
.DESCRIPTION
    Authenticates to Microsoft Graph using the required Identity Governance scopes
    and retrieves active JML workflow definitions, triggers, and execution statuses.
.NOTES
    Project: Project 3 - Enterprise IGA Implementation
#>

# 1. Check and install Microsoft Graph module if needed
if (-not (Get-Module -ListAvailable -Name Microsoft.Graph.Identity.Governance)) {
    Write-Host "Installing Microsoft.Graph.Identity.Governance module..." -ForegroundColor Yellow
    Install-Module Microsoft.Graph.Identity.Governance -Scope CurrentUser -Force
}

# 2. Authenticate to Microsoft Graph
Write-Host "Connecting to Microsoft Graph..." -ForegroundColor Cyan
Connect-MgGraph -Scopes "LifecycleWorkflows.Read.All"

# 3. Retrieve Lifecycle Workflows
Write-Host "Fetching Entra ID Lifecycle Workflows..." -ForegroundColor Green
$workflows = Get-MgIdentityGovernanceLifecycleWorkflow

# 4. Format output cleanly
$workflows | Select-Object Id, DisplayName, Category, IsEnabled, Version | Format-Table -AutoSize
