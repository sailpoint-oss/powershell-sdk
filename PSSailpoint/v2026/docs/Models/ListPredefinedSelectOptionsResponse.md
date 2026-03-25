---
id: v2026-list-predefined-select-options-response
title: ListPredefinedSelectOptionsResponse
pagination_label: ListPredefinedSelectOptionsResponse
sidebar_label: ListPredefinedSelectOptionsResponse
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'ListPredefinedSelectOptionsResponse', 'V2026ListPredefinedSelectOptionsResponse'] 
slug: /tools/sdk/powershell/v2026/models/list-predefined-select-options-response
tags: ['SDK', 'Software Development Kit', 'ListPredefinedSelectOptionsResponse', 'V2026ListPredefinedSelectOptionsResponse']
---


# ListPredefinedSelectOptionsResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Results** | **[]String** | Results holds a list of PreDefinedSelectOption items | [optional] 

## Examples

- Prepare the resource
```powershell
$ListPredefinedSelectOptionsResponse = Initialize-V2026ListPredefinedSelectOptionsResponse  -Results null
```

- Convert the resource to JSON
```powershell
$ListPredefinedSelectOptionsResponse | ConvertTo-JSON
```


[[Back to top]](#) 

