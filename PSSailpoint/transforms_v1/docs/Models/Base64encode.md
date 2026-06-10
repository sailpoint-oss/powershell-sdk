---
id: base64encode
title: Base64encode
pagination_label: Base64encode
sidebar_label: Base64encode
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'Base64encode', 'Base64encode'] 
slug: /tools/sdk/powershell/transformsv1/models/base64encode
tags: ['SDK', 'Software Development Kit', 'Base64encode', 'Base64encode']
---


# Base64encode

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**RequiresPeriodicRefresh** | **Boolean** | A value that indicates whether the transform logic should be re-evaluated every evening as part of the identity refresh process | [optional] [default to $false]
**VarInput** | [**map[string]AnyType**](any-type) | This is an optional attribute that can explicitly define the input data which will be fed into the transform logic. If input is not provided, the transform will take its input from the source and attribute combination configured via the UI. | [optional] 

## Examples

- Prepare the resource
```powershell
$Base64encode = Initialize-Base64encode  -RequiresPeriodicRefresh false `
 -VarInput {"type":"accountAttribute","attributes":{"attributeName":"first_name","sourceName":"Source"}}
```

- Convert the resource to JSON
```powershell
$Base64encode | ConvertTo-JSON
```


[[Back to top]](#) 

