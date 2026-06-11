---
id: list-segments-v1401-response
title: ListSegmentsV1401Response
pagination_label: ListSegmentsV1401Response
sidebar_label: ListSegmentsV1401Response
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'ListSegmentsV1401Response', 'ListSegmentsV1401Response'] 
slug: /tools/sdk/powershell/segmentsv1/models/list-segments-v1401-response
tags: ['SDK', 'Software Development Kit', 'ListSegmentsV1401Response', 'ListSegmentsV1401Response']
---


# ListSegmentsV1401Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarError** | [**AnyType**](any-type) | A message describing the error | [optional] 

## Examples

- Prepare the resource
```powershell
$ListSegmentsV1401Response = Initialize-ListSegmentsV1401Response  -VarError JWT validation failed: JWT is expired
```

- Convert the resource to JSON
```powershell
$ListSegmentsV1401Response | ConvertTo-JSON
```


[[Back to top]](#) 

