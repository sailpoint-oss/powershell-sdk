---
id: nerm-create-permission200-response
title: CreatePermission200Response
pagination_label: CreatePermission200Response
sidebar_label: CreatePermission200Response
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'CreatePermission200Response', 'NERMCreatePermission200Response'] 
slug: /tools/sdk/powershell/nerm/models/create-permission200-response
tags: ['SDK', 'Software Development Kit', 'CreatePermission200Response', 'NERMCreatePermission200Response']
---


# CreatePermission200Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Permission** | [**Permission**](permission) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CreatePermission200Response = Initialize-NERMCreatePermission200Response  -Permission null
```

- Convert the resource to JSON
```powershell
$CreatePermission200Response | ConvertTo-JSON
```


[[Back to top]](#) 

