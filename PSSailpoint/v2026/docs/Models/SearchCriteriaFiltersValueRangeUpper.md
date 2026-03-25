---
id: v2026-search-criteria-filters-value-range-upper
title: SearchCriteriaFiltersValueRangeUpper
pagination_label: SearchCriteriaFiltersValueRangeUpper
sidebar_label: SearchCriteriaFiltersValueRangeUpper
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'SearchCriteriaFiltersValueRangeUpper', 'V2026SearchCriteriaFiltersValueRangeUpper'] 
slug: /tools/sdk/powershell/v2026/models/search-criteria-filters-value-range-upper
tags: ['SDK', 'Software Development Kit', 'SearchCriteriaFiltersValueRangeUpper', 'V2026SearchCriteriaFiltersValueRangeUpper']
---


# SearchCriteriaFiltersValueRangeUpper

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Value** | **String** | The upper bound value. | [optional] 
**Inclusive** | **Boolean** | Whether the upper bound is inclusive. | [optional] [default to $false]

## Examples

- Prepare the resource
```powershell
$SearchCriteriaFiltersValueRangeUpper = Initialize-V2026SearchCriteriaFiltersValueRangeUpper  -Value 20 `
 -Inclusive false
```

- Convert the resource to JSON
```powershell
$SearchCriteriaFiltersValueRangeUpper | ConvertTo-JSON
```


[[Back to top]](#) 

