---
id: search-criteria-filters-value-range-lower
title: SearchCriteriaFiltersValueRangeLower
pagination_label: SearchCriteriaFiltersValueRangeLower
sidebar_label: SearchCriteriaFiltersValueRangeLower
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'SearchCriteriaFiltersValueRangeLower', 'SearchCriteriaFiltersValueRangeLower'] 
slug: /tools/sdk/powershell/suggestedentitlementdescription/models/search-criteria-filters-value-range-lower
tags: ['SDK', 'Software Development Kit', 'SearchCriteriaFiltersValueRangeLower', 'SearchCriteriaFiltersValueRangeLower']
---


# SearchCriteriaFiltersValueRangeLower

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Value** | **String** | The lower bound value. | [optional] 
**Inclusive** | **Boolean** | Whether the lower bound is inclusive. | [optional] [default to $false]

## Examples

- Prepare the resource
```powershell
$SearchCriteriaFiltersValueRangeLower = Initialize-SearchCriteriaFiltersValueRangeLower  -Value 10 `
 -Inclusive true
```

- Convert the resource to JSON
```powershell
$SearchCriteriaFiltersValueRangeLower | ConvertTo-JSON
```


[[Back to top]](#) 

