---
id: nerm-role-profiles
title: RoleProfiles
pagination_label: RoleProfiles
sidebar_label: RoleProfiles
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'RoleProfiles', 'NERMRoleProfiles'] 
slug: /tools/sdk/powershell/nerm/models/role-profiles
tags: ['SDK', 'Software Development Kit', 'RoleProfiles', 'NERMRoleProfiles']
---


# RoleProfiles

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**RoleProfiles** | [**[]RoleProfile**](role-profile) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$RoleProfiles = Initialize-NERMRoleProfiles  -RoleProfiles null
```

- Convert the resource to JSON
```powershell
$RoleProfiles | ConvertTo-JSON
```


[[Back to top]](#) 

