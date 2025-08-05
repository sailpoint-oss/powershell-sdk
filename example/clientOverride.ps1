# Example: Client Credential Override Demonstration
# This example shows various ways to use client credential overrides in the PowerShell SDK

# Import the module (if not already imported)
# Import-Module PSSailpoint -Force

Write-Host "=== SailPoint PowerShell SDK - Client Credential Override Demo ===" -ForegroundColor Cyan

# Scenario 1: Temporary credential override for specific operations
Write-Host "`nScenario 1: Using override credentials for a specific task" -ForegroundColor Yellow

# Save current configuration state
$originalStatus = Get-ClientCredentialOverride
Write-Host "Original override status: $($originalStatus.IsOverrideSet)"

# Set override credentials (replace with actual credentials)
Set-ClientCredentialOverride -ClientId "temp-client-id" -ClientSecret "temp-client-secret"
Write-Host "Override credentials set"

try {
    # Perform operations with override credentials
    Write-Host "Fetching sources with override credentials..."
    $sources = Get-Sources -Limit 5
    Write-Host "Successfully retrieved $($sources.Count) sources"
} catch {
    Write-Host "Error with override credentials: $_" -ForegroundColor Red
}

# Clear overrides
Clear-ClientCredentialOverride
Write-Host "Override credentials cleared"

# Scenario 2: Switching between multiple environments
Write-Host "`nScenario 2: Switching between environments" -ForegroundColor Yellow

# Production environment
Write-Host "Switching to production environment..."
Set-ClientCredentialOverride -ClientId "prod-client-id" -ClientSecret "prod-client-secret"
$status = Get-ClientCredentialOverride
Write-Host "Active Client ID: $($status.ClientId)"

# Perform production operations
# ... API calls here ...

# Development environment
Write-Host "`nSwitching to development environment..."
Set-ClientCredentialOverride -ClientId "dev-client-id" -ClientSecret "dev-client-secret"
$status = Get-ClientCredentialOverride
Write-Host "Active Client ID: $($status.ClientId)"

# Perform development operations
# ... API calls here ...

# Scenario 3: Using with pagination
Write-Host "`nScenario 3: Paginated search with override credentials" -ForegroundColor Yellow

$searchJson = @"
{
    "indices": ["identities"],
    "query": {
        "query": "attributes.department:Engineering",
        "fields": ["name", "email"]
    },
    "sort": ["name"]
}
"@

$search = ConvertFrom-JsonToSearch -Json $searchJson

try {
    Write-Host "Performing paginated search with override credentials..."
    $results = Invoke-PaginateSearch -Increment 50 -Limit 200 -Search $search
    Write-Host "Retrieved $($results.Count) identities from Engineering department"
} catch {
    Write-Host "Search error: $_" -ForegroundColor Red
}

# Scenario 4: Error handling and fallback
Write-Host "`nScenario 4: Error handling with credential override" -ForegroundColor Yellow

# Try with potentially invalid override credentials
Set-ClientCredentialOverride -ClientId "invalid-client" -ClientSecret "invalid-secret"

try {
    $accounts = Get-Accounts -Limit 1
} catch {
    Write-Host "Failed with override credentials: $_" -ForegroundColor Red
    
    # Clear overrides and fall back to default
    Write-Host "Falling back to default credentials..."
    Clear-ClientCredentialOverride
    
    try {
        $accounts = Get-Accounts -Limit 1
        Write-Host "Successfully retrieved accounts with default credentials" -ForegroundColor Green
    } catch {
        Write-Host "Also failed with default credentials: $_" -ForegroundColor Red
    }
}

# Final cleanup
Clear-ClientCredentialOverride
Write-Host "`nDemo completed. All credential overrides have been cleared." -ForegroundColor Cyan

# Display final status
$finalStatus = Get-ClientCredentialOverride
Write-Host "Final override status: $($finalStatus.IsOverrideSet)"