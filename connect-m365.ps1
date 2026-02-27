# Connect to Microsoft Graph

Write-Host "Connecting to Microsoft Graph..." -ForegroundColor Cyan

# Install module if not available
if (-not (Get-Module -ListAvailable -Name Microsoft.Graph)) {
    Install-Module Microsoft.Graph -Scope CurrentUser -Force
}

Import-Module Microsoft.Graph

Connect-MgGraph -Scopes "User.Read.All","Directory.Read.All"

Write-Host "Connected Successfully!" -ForegroundColor Green

Get-MgUser -Top 10 | Select-Object DisplayName, UserPrincipalName
# TODO:
# Add license reporting automation
# Add admin role export script
