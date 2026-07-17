---
id: list-predefined-select-options-response
title: ListPredefinedSelectOptionsResponse
pagination_label: ListPredefinedSelectOptionsResponse
sidebar_label: ListPredefinedSelectOptionsResponse
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'ListPredefinedSelectOptionsResponse', 'ListPredefinedSelectOptionsResponse'] 
slug: /tools/sdk/powershell/customforms/models/list-predefined-select-options-response
tags: ['SDK', 'Software Development Kit', 'ListPredefinedSelectOptionsResponse', 'ListPredefinedSelectOptionsResponse']
---


# ListPredefinedSelectOptionsResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Results** | **[]String** | Results holds a list of PreDefinedSelectOption items | [optional] 

## Examples

- Prepare the resource
```powershell
$ListPredefinedSelectOptionsResponse = Initialize-ListPredefinedSelectOptionsResponse  -Results null
```

- Convert the resource to JSON
```powershell
$ListPredefinedSelectOptionsResponse | ConvertTo-JSON
```


[[Back to top]](#) 

