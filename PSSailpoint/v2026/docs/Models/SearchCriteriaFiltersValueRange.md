---
id: v2026-search-criteria-filters-value-range
title: SearchCriteriaFiltersValueRange
pagination_label: SearchCriteriaFiltersValueRange
sidebar_label: SearchCriteriaFiltersValueRange
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'SearchCriteriaFiltersValueRange', 'V2026SearchCriteriaFiltersValueRange'] 
slug: /tools/sdk/powershell/v2026/models/search-criteria-filters-value-range
tags: ['SDK', 'Software Development Kit', 'SearchCriteriaFiltersValueRange', 'V2026SearchCriteriaFiltersValueRange']
---


# SearchCriteriaFiltersValueRange

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Lower** | [**SearchCriteriaFiltersValueRangeLower**](search-criteria-filters-value-range-lower) |  | [optional] 
**Upper** | [**SearchCriteriaFiltersValueRangeUpper**](search-criteria-filters-value-range-upper) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$SearchCriteriaFiltersValueRange = Initialize-V2026SearchCriteriaFiltersValueRange  -Lower null `
 -Upper null
```

- Convert the resource to JSON
```powershell
$SearchCriteriaFiltersValueRange | ConvertTo-JSON
```


[[Back to top]](#) 

