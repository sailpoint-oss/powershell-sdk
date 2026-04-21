---
id: nerm-system-role-permission1
title: SystemRolePermission1
pagination_label: SystemRolePermission1
sidebar_label: SystemRolePermission1
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'SystemRolePermission1', 'NERMSystemRolePermission1'] 
slug: /tools/sdk/powershell/nerm/models/system-role-permission1
tags: ['SDK', 'Software Development Kit', 'SystemRolePermission1', 'NERMSystemRolePermission1']
---


# SystemRolePermission1

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**SystemRoleId** | **String** | The id of the system role | [optional] 
**SubjectId** | **String** | The ID of the object that the permission is giving access to | [optional] 
**Value** |  **Enum** [  "1",    "2",    "3",    "4",    "5",    "6",    "7" ] | The permissions level of access | [optional] 
**Subject** |  **Enum** [  "0",    "2",    "14" ] | The type of permission | [optional] 

## Examples

- Prepare the resource
```powershell
$SystemRolePermission1 = Initialize-NERMSystemRolePermission1  -SystemRoleId ef5d413f-ba18-49e6-9a72-bb115aa133ff `
 -SubjectId db3d85ef-c324-458b-b206-58debaa96419 `
 -Value 1 `
 -Subject 0
```

- Convert the resource to JSON
```powershell
$SystemRolePermission1 | ConvertTo-JSON
```


[[Back to top]](#) 

