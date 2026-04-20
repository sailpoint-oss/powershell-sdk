---
id: nerm-permission1
title: Permission1
pagination_label: Permission1
sidebar_label: Permission1
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'Permission1', 'NERMPermission1'] 
slug: /tools/sdk/powershell/nerm/models/permission1
tags: ['SDK', 'Software Development Kit', 'Permission1', 'NERMPermission1']
---


# Permission1

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**RoleId** | **String** | The id of the role | [optional] 
**SubjectId** | **String** | The ID of the object that the permission is giving access to | [optional] 
**Value** |  **Enum** [  "1",    "2",    "3",    "4",    "5",    "6",    "7" ] | The permissions level of access | [optional] 
**Subject** |  **Enum** [  "0",    "1",    "2",    "3",    "4",    "5",    "6",    "7",    "8",    "9",    "10",    "11",    "12",    "13",    "14",    "15",    "16",    "17",    "18",    "19",    "20",    "21",    "22",    "23" ] | The type of permission | [optional] 

## Examples

- Prepare the resource
```powershell
$Permission1 = Initialize-NERMPermission1  -RoleId ef5d413f-ba18-49e6-9a72-bb115aa133ff `
 -SubjectId db3d85ef-c324-458b-b206-58debaa96419 `
 -Value 1 `
 -Subject 0
```

- Convert the resource to JSON
```powershell
$Permission1 | ConvertTo-JSON
```


[[Back to top]](#) 

