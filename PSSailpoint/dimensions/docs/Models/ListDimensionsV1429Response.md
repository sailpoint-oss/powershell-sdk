---
id: list-dimensions-v1429-response
title: ListDimensionsV1429Response
pagination_label: ListDimensionsV1429Response
sidebar_label: ListDimensionsV1429Response
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'ListDimensionsV1429Response', 'ListDimensionsV1429Response'] 
slug: /tools/sdk/powershell/dimensionsv1/models/list-dimensions-v1429-response
tags: ['SDK', 'Software Development Kit', 'ListDimensionsV1429Response', 'ListDimensionsV1429Response']
---


# ListDimensionsV1429Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Message** | [**AnyType**](any-type) | A message describing the error | [optional] 

## Examples

- Prepare the resource
```powershell
$ListDimensionsV1429Response = Initialize-ListDimensionsV1429Response  -Message  Rate Limit Exceeded 
```

- Convert the resource to JSON
```powershell
$ListDimensionsV1429Response | ConvertTo-JSON
```


[[Back to top]](#) 

