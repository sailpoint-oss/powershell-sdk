---
id: identity-profile-all-of-authoritative-source
title: IdentityProfileAllOfAuthoritativeSource
pagination_label: IdentityProfileAllOfAuthoritativeSource
sidebar_label: IdentityProfileAllOfAuthoritativeSource
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'IdentityProfileAllOfAuthoritativeSource', 'IdentityProfileAllOfAuthoritativeSource'] 
slug: /tools/sdk/powershell/v3/models/identity-profile-all-of-authoritative-source
tags: ['SDK', 'Software Development Kit', 'IdentityProfileAllOfAuthoritativeSource', 'IdentityProfileAllOfAuthoritativeSource']
---


# IdentityProfileAllOfAuthoritativeSource

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** |  **Enum** [  "SOURCE" ] | Authoritative source's object type. | [optional] 
**Id** | **String** | Authoritative source's ID. | [optional] 
**Name** | **String** | Authoritative source's name. | [optional] 

## Examples

- Prepare the resource
```powershell
$IdentityProfileAllOfAuthoritativeSource = Initialize-IdentityProfileAllOfAuthoritativeSource  -Type SOURCE `
 -Id 2c9180835d191a86015d28455b4b232a `
 -Name HR Active Directory
```

- Convert the resource to JSON
```powershell
$IdentityProfileAllOfAuthoritativeSource | ConvertTo-JSON
```


[[Back to top]](#) 

