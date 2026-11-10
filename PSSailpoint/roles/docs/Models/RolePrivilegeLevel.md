---
id: role-privilege-level
title: RolePrivilegeLevel
pagination_label: RolePrivilegeLevel
sidebar_label: RolePrivilegeLevel
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'RolePrivilegeLevel', 'RolePrivilegeLevel'] 
slug: /tools/sdk/powershell/roles/models/role-privilege-level
tags: ['SDK', 'Software Development Kit', 'RolePrivilegeLevel', 'RolePrivilegeLevel']
---


# RolePrivilegeLevel

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Effective** |  **Enum** [  "NONE",    "LOW",    "MEDIUM",    "HIGH",    "UNDETERMINED" ] | Effective privilege level of the role. **UNDETERMINED** means the privilege level could not be calculated for the role's entitlements. | [optional] 

## Examples

- Prepare the resource
```powershell
$RolePrivilegeLevel = Initialize-RolePrivilegeLevel  -Effective HIGH
```

- Convert the resource to JSON
```powershell
$RolePrivilegeLevel | ConvertTo-JSON
```


[[Back to top]](#) 

