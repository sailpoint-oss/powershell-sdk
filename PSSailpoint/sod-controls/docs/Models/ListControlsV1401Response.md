---
id: list-controls-v1401-response
title: ListControlsV1401Response
pagination_label: ListControlsV1401Response
sidebar_label: ListControlsV1401Response
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'ListControlsV1401Response', 'ListControlsV1401Response'] 
slug: /tools/sdk/powershell/sodcontrols/models/list-controls-v1401-response
tags: ['SDK', 'Software Development Kit', 'ListControlsV1401Response', 'ListControlsV1401Response']
---


# ListControlsV1401Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarError** | **AnyType** | A message describing the error | [optional] 

## Examples

- Prepare the resource
```powershell
$ListControlsV1401Response = Initialize-ListControlsV1401Response  -VarError JWT validation failed: JWT is expired
```

- Convert the resource to JSON
```powershell
$ListControlsV1401Response | ConvertTo-JSON
```


[[Back to top]](#) 

