---
id: v2024-nested-aggregation
title: NestedAggregation
pagination_label: NestedAggregation
sidebar_label: NestedAggregation
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'NestedAggregation', 'V2024NestedAggregation'] 
slug: /tools/sdk/powershell/v2024/models/nested-aggregation
tags: ['SDK', 'Software Development Kit', 'NestedAggregation', 'V2024NestedAggregation']
---


# NestedAggregation

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** | The name of the nested aggregate to be included in the result. | [required]
**Type** | **String** | The type of the nested object. | [required]

## Examples

- Prepare the resource
```powershell
$NestedAggregation = Initialize-V2024NestedAggregation  -Name id `
 -Type access
```

- Convert the resource to JSON
```powershell
$NestedAggregation | ConvertTo-JSON
```


[[Back to top]](#) 

