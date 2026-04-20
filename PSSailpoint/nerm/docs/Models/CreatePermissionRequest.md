---
id: nerm-create-permission-request
title: CreatePermissionRequest
pagination_label: CreatePermissionRequest
sidebar_label: CreatePermissionRequest
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'CreatePermissionRequest', 'NERMCreatePermissionRequest'] 
slug: /tools/sdk/powershell/nerm/models/create-permission-request
tags: ['SDK', 'Software Development Kit', 'CreatePermissionRequest', 'NERMCreatePermissionRequest']
---


# CreatePermissionRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Permission** | [**Permission1**](permission1) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CreatePermissionRequest = Initialize-NERMCreatePermissionRequest  -Permission null
```

- Convert the resource to JSON
```powershell
$CreatePermissionRequest | ConvertTo-JSON
```


[[Back to top]](#) 

