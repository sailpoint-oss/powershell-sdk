---
id: v2026-filter-aggregation
title: FilterAggregation
pagination_label: FilterAggregation
sidebar_label: FilterAggregation
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'FilterAggregation', 'V2026FilterAggregation'] 
slug: /tools/sdk/powershell/v2026/models/filter-aggregation
tags: ['SDK', 'Software Development Kit', 'FilterAggregation', 'V2026FilterAggregation']
---


# FilterAggregation

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** | The name of the filter aggregate to be included in the result. | [required]
**Type** | [**SearchFilterType**](search-filter-type) |  | [optional] 
**Field** | **String** | The search field to apply the filter to.  Prefix the field name with '@' to reference a nested object.  | [required]
**Value** | **String** | The value to filter on. | [required]

## Examples

- Prepare the resource
```powershell
$FilterAggregation = Initialize-V2026FilterAggregation  -Name Entitlements `
 -Type null `
 -Field access.type `
 -Value ENTITLEMENT
```

- Convert the resource to JSON
```powershell
$FilterAggregation | ConvertTo-JSON
```


[[Back to top]](#) 

