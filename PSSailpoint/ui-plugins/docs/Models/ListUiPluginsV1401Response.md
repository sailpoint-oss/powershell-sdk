---
id: list-ui-plugins-v1401-response
title: ListUiPluginsV1401Response
pagination_label: ListUiPluginsV1401Response
sidebar_label: ListUiPluginsV1401Response
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'ListUiPluginsV1401Response', 'ListUiPluginsV1401Response'] 
slug: /tools/sdk/powershell/uiplugins/models/list-ui-plugins-v1401-response
tags: ['SDK', 'Software Development Kit', 'ListUiPluginsV1401Response', 'ListUiPluginsV1401Response']
---


# ListUiPluginsV1401Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarError** | **AnyType** | A message describing the error | [optional] 

## Examples

- Prepare the resource
```powershell
$ListUiPluginsV1401Response = Initialize-ListUiPluginsV1401Response  -VarError JWT validation failed: JWT is expired
```

- Convert the resource to JSON
```powershell
$ListUiPluginsV1401Response | ConvertTo-JSON
```


[[Back to top]](#) 

