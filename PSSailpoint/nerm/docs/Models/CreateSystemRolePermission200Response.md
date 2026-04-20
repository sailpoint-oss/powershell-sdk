---
id: nerm-create-system-role-permission200-response
title: CreateSystemRolePermission200Response
pagination_label: CreateSystemRolePermission200Response
sidebar_label: CreateSystemRolePermission200Response
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'CreateSystemRolePermission200Response', 'NERMCreateSystemRolePermission200Response'] 
slug: /tools/sdk/powershell/nerm/models/create-system-role-permission200-response
tags: ['SDK', 'Software Development Kit', 'CreateSystemRolePermission200Response', 'NERMCreateSystemRolePermission200Response']
---


# CreateSystemRolePermission200Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**SystemRolePermission** | [**SystemRolePermission**](system-role-permission) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CreateSystemRolePermission200Response = Initialize-NERMCreateSystemRolePermission200Response  -SystemRolePermission null
```

- Convert the resource to JSON
```powershell
$CreateSystemRolePermission200Response | ConvertTo-JSON
```


[[Back to top]](#) 

