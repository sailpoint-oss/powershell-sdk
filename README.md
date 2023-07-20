# PSSailpoint

## Description

A PowerShell Module for accessing the SailPoint IdentityNow REST API's.

## Installation

> This module requires PowerShell version 6.2 or greater.

In order to read the yaml configuration file you will need to install the PSYaml Module.

```powershell
Install-Module -Name PSYaml -RequiredVersion 1.0.2
```

Install the main module.

```powershell
Install-Module -Name PSSailpoint
```

## Proxy configuration

To use a proxy server, add the following configuration to your script.

```powershell
$Proxy = New-Object System.Net.WebProxy("https://test.proxy.com:8080")

Set-DefaultConfiguration -Proxy $Proxy
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
    Write-Host ("Exception occurred when calling Get-Accounts: {0}" -f $_.ErrorDetails)
    Write-Host ("Response headers: {0}" -f $_.Exception.Response.Headers)
}
```

---

### Search IdentityNow for all Identities

```powershell
$Json = @"
{
	"indices": [
		"identities"
	],
	"query": {
		"query": "*",
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
    Write-Host ("Exception occurred when calling Search-Post: {0}" -f $_.ErrorDetails)
    Write-Host ("Response headers: {0}" -f $_.Exception.Response.Headers)
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
    Write-Host ("Exception occurred when calling New-Transform: {0}" -f $_.ErrorDetails)
    Write-Host ("Response headers: {0}" -f $_.Exception.Response.Headers)
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

    Invoke-Paginate -Function "Get-Accounts" -Increment 250 -Limit 1000 -InitialOffset 0 -Parameters $Parameters

} catch {
    Write-Host ("Exception occurred when calling Invoke-Paginate: {0}" -f $_.ErrorDetails)
    Write-Host ("Response headers: {0}" -f $_.Exception.Response.Headers)
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

    Invoke-PaginateSearch -Increment 50 -Limit 10000 -Search $Search

} catch {
    Write-Host ("Exception occurred when calling Invoke-PaginateSearch: {0}" -f $_.ErrorDetails)
    Write-Host ("Response headers: {0}" -f $_.Exception.Response.Headers)
}
```
