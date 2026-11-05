---
id: access-profile-privilege-level
title: AccessProfilePrivilegeLevel
pagination_label: AccessProfilePrivilegeLevel
sidebar_label: AccessProfilePrivilegeLevel
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'AccessProfilePrivilegeLevel', 'AccessProfilePrivilegeLevel'] 
slug: /tools/sdk/powershell/accessprofiles/models/access-profile-privilege-level
tags: ['SDK', 'Software Development Kit', 'AccessProfilePrivilegeLevel', 'AccessProfilePrivilegeLevel']
---


# AccessProfilePrivilegeLevel

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Effective** |  **Enum** [  "NONE",    "LOW",    "MEDIUM",    "HIGH",    "UNDETERMINED" ] | Effective privilege level of the access profile, derived from the highest privilege level of the entitlements it contains. `UNDETERMINED` indicates the level could not be calculated. | [optional] 

## Examples

- Prepare the resource
```powershell
$AccessProfilePrivilegeLevel = Initialize-AccessProfilePrivilegeLevel  -Effective MEDIUM
```

- Convert the resource to JSON
```powershell
$AccessProfilePrivilegeLevel | ConvertTo-JSON
```


[[Back to top]](#) 

