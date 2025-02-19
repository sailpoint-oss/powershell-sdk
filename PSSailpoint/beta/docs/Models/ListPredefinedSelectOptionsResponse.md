---
id: beta-list-predefined-select-options-response
title: ListPredefinedSelectOptionsResponse
pagination_label: ListPredefinedSelectOptionsResponse
sidebar_label: ListPredefinedSelectOptionsResponse
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'ListPredefinedSelectOptionsResponse', 'BetaListPredefinedSelectOptionsResponse'] 
slug: /tools/sdk/powershell/beta/models/list-predefined-select-options-response
tags: ['SDK', 'Software Development Kit', 'ListPredefinedSelectOptionsResponse', 'BetaListPredefinedSelectOptionsResponse']
---


# ListPredefinedSelectOptionsResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Results** | **[]String** | Results holds a list of PreDefinedSelectOption items | [optional] 

## Examples

- Prepare the resource
```powershell
$ListPredefinedSelectOptionsResponse = Initialize-PSSailpoint.BetaListPredefinedSelectOptionsResponse  -Results null
$ListPredefinedSelectOptionsResponse = @"{  "Results": "null "}"@
```

- Convert the resource from JSON
```powershell
ConvertFrom-JsonToListPredefinedSelectOptionsResponse -Json $ListPredefinedSelectOptionsResponse
```


[[Back to top]](#) 

