# PSSailpoint

## Description

A PowerShell Module for accessing the SailPoint IdentityNow REST API's.

## Installation

```powershell
Install-Module -Name PSSailpoint
```

## Create a configuration file or save your configuration as environment variables

You can create a local configuration file using the [CLI tool](https://github.com/sailpoint-oss/sailpoint-cli#configuration) or you can store your configuration in environment variables

* SAIL_BASE_URL
* SAIL_CLIENT_ID
* SAIL_CLIENT_SECRET

## Examples

### List Accounts with sourceId `f4e73766efdf4dc6acdeed179606d694`

```powershell
$Limit = 250
$Offset = 0
$Count = $true
$Filters = 'sourceId eq "f4e73766efdf4dc6acdeed179606d694"'

# Accounts List
try {

    Get-Accounts -Limit $Limit -Offset $Offset -Count $Count -Filters $Filters

} catch {
    Write-Host $_
    Write-Host ("Exception occurred when calling Invoke-ListAccounts: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

---

### Search IdentityNow for Identities with the name `john.doe`

```powershell
$Json = @"
{
	"indices": [
		"identities"
	],
	"query": {
		"query": "\"john.doe\"",
		"fields": [
		"name"
		]
	}
	}
"@

$Search = ConvertFrom-JsonToSearch -Json $Json

try {
    Search-Post -Search $Search
} catch {
    Write-Host ("Exception occurred when calling Search-Post: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

---

### Create a new Lookup transform

```powershell
# Create transform
$JSON = @"
{
    "name": "New Transform",
    "type": "lookup",
    "attributes" : {
        "table" : {
            "USA": "Americas",
            "FRA": "EMEA",
            "AUS": "APAC",
            "default": "Unknown Region"
        }
    }
}
"@

$Transform = ConvertFrom-JsonToTransform -Json $JSON

 try {
    New-Transform -Transform $Transform
} catch {
    Write-Host ("Exception occurred when calling New-Transform: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

---

### Get a list of Accounts with pagination

```powershell

$Parameters = @{
    "Filters" = 'name co "Andrew"'
}

# Accounts List
try {

    Paginate -Function "Get-Accounts" -Increment 250 -Limit 1000 -InitialOffset 0 -Parameters $Parameters

} catch {
    Write-Host $_
    Write-Host ("Exception occurred when calling {1}: {0}" -f ($_.ErrorDetails | ConvertFrom-Json), "Get-Accounts")
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

---

### Get a list of Identities using search with pagination

```powershell
$JSON = @"
{
	"indices": [
		"identities"
	],
	"query": {
		"query": "*",
		"fields": [
		"name"
		]
	},
	"sort": [
		"-displayName"
	]
	}
"@

$Search = ConvertFrom-JsonToSearch -Json $JSON

try {

    Paginate-Search -Increment 50 -Limit 10000 -Search $Search

} catch {
    Write-Host $_
    Write-Host ("Exception occurred when calling {1}: {0}" -f ($_.ErrorDetails | ConvertFrom-Json), "Paginate-Search")
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```
