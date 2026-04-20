---
id: nerm-system-role-permission
title: SystemRolePermission
pagination_label: SystemRolePermission
sidebar_label: SystemRolePermission
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'SystemRolePermission', 'NERMSystemRolePermission'] 
slug: /tools/sdk/powershell/nerm/models/system-role-permission
tags: ['SDK', 'Software Development Kit', 'SystemRolePermission', 'NERMSystemRolePermission']
---


# SystemRolePermission

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | The id of the system role permission | [optional] [readonly] 
**SystemRoleId** | **String** | The id of the system role | [optional] 
**Value** | **Int32** | The permissions level of access | [optional] 
**Subject** | **Int32** | The type of permission | [optional] 
**SubjectId** | **String** | The ID of the object that the permission is giving access to | [optional] 

## Examples

- Prepare the resource
```powershell
$SystemRolePermission = Initialize-NERMSystemRolePermission  -Id 2e06b876-f456-473d-bd65-b6435e0b6b2d `
 -SystemRoleId ef5d413f-ba18-49e6-9a72-bb115aa133ff `
 -Value 1 `
 -Subject 1 `
 -SubjectId db3d85ef-c324-458b-b206-58debaa96419
```

- Convert the resource to JSON
```powershell
$SystemRolePermission | ConvertTo-JSON
```


[[Back to top]](#) 

