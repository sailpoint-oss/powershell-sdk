---
id: nerm-profile-type-roles1
title: ProfileTypeRoles1
pagination_label: ProfileTypeRoles1
sidebar_label: ProfileTypeRoles1
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'ProfileTypeRoles1', 'NERMProfileTypeRoles1'] 
slug: /tools/sdk/powershell/nerm/models/profile-type-roles1
tags: ['SDK', 'Software Development Kit', 'ProfileTypeRoles1', 'NERMProfileTypeRoles1']
---


# ProfileTypeRoles1

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ProfileTypeId** | **String** | The id of the profile type | [optional] 
**RoleId** | **String** | The id of the role | [optional] 

## Examples

- Prepare the resource
```powershell
$ProfileTypeRoles1 = Initialize-NERMProfileTypeRoles1  -ProfileTypeId 2eb5773f-2486-452f-bdb3-796133b30862 `
 -RoleId 2eb5773f-2486-452f-bdb3-796133b30862
```

- Convert the resource to JSON
```powershell
$ProfileTypeRoles1 | ConvertTo-JSON
```


[[Back to top]](#) 

