---
id: nerm-permission
title: Permission
pagination_label: Permission
sidebar_label: Permission
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'Permission', 'NERMPermission'] 
slug: /tools/sdk/powershell/nerm/models/permission
tags: ['SDK', 'Software Development Kit', 'Permission', 'NERMPermission']
---


# Permission

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | The id of the permission | [optional] [readonly] 
**RoleId** | **String** | The id of the role | [optional] 
**Value** | **Int32** | The permissions level of access | [optional] 
**Subject** | **Int32** | The type of permission | [optional] 
**SubjectId** | **String** | The ID of the object that the permission is giving access to | [optional] 

## Examples

- Prepare the resource
```powershell
$Permission = Initialize-NERMPermission  -Id 2e06b876-f456-473d-bd65-b6435e0b6b2d `
 -RoleId ef5d413f-ba18-49e6-9a72-bb115aa133ff `
 -Value 1 `
 -Subject 1 `
 -SubjectId db3d85ef-c324-458b-b206-58debaa96419
```

- Convert the resource to JSON
```powershell
$Permission | ConvertTo-JSON
```


[[Back to top]](#) 

