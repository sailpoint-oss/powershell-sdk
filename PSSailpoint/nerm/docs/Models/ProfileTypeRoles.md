---
id: nerm-profile-type-roles
title: ProfileTypeRoles
pagination_label: ProfileTypeRoles
sidebar_label: ProfileTypeRoles
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'ProfileTypeRoles', 'NERMProfileTypeRoles'] 
slug: /tools/sdk/powershell/nerm/models/profile-type-roles
tags: ['SDK', 'Software Development Kit', 'ProfileTypeRoles', 'NERMProfileTypeRoles']
---


# ProfileTypeRoles

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ProfileTypeId** | **String** | The id of the profile type | [optional] 
**RoleId** | **String** | The id of the role | [optional] 
**Id** | **String** | The id of the profile type role | [optional] 

## Examples

- Prepare the resource
```powershell
$ProfileTypeRoles = Initialize-NERMProfileTypeRoles  -ProfileTypeId 2eb5773f-2486-452f-bdb3-796133b30862 `
 -RoleId 2eb5773f-2486-452f-bdb3-796133b30862 `
 -Id 2e06b876-f456-473d-bd65-b6435e0b6b2d
```

- Convert the resource to JSON
```powershell
$ProfileTypeRoles | ConvertTo-JSON
```


[[Back to top]](#) 

