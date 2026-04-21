---
id: nerm-role-profile
title: RoleProfile
pagination_label: RoleProfile
sidebar_label: RoleProfile
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'RoleProfile', 'NERMRoleProfile'] 
slug: /tools/sdk/powershell/nerm/models/role-profile
tags: ['SDK', 'Software Development Kit', 'RoleProfile', 'NERMRoleProfile']
---


# RoleProfile

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | [optional] [readonly] 
**Uid** | **String** |  | [optional] [readonly] 
**RoleId** | **String** |  | [optional] 
**ProfileId** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$RoleProfile = Initialize-NERMRoleProfile  -Id null `
 -Uid null `
 -RoleId null `
 -ProfileId null
```

- Convert the resource to JSON
```powershell
$RoleProfile | ConvertTo-JSON
```


[[Back to top]](#) 

