---
id: nerm-create-system-role-permission-request
title: CreateSystemRolePermissionRequest
pagination_label: CreateSystemRolePermissionRequest
sidebar_label: CreateSystemRolePermissionRequest
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'CreateSystemRolePermissionRequest', 'NERMCreateSystemRolePermissionRequest'] 
slug: /tools/sdk/powershell/nerm/models/create-system-role-permission-request
tags: ['SDK', 'Software Development Kit', 'CreateSystemRolePermissionRequest', 'NERMCreateSystemRolePermissionRequest']
---


# CreateSystemRolePermissionRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**SystemRolePermission** | [**SystemRolePermission1**](system-role-permission1) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CreateSystemRolePermissionRequest = Initialize-NERMCreateSystemRolePermissionRequest  -SystemRolePermission null
```

- Convert the resource to JSON
```powershell
$CreateSystemRolePermissionRequest | ConvertTo-JSON
```


[[Back to top]](#) 

