---
id: v2026-schedule2-months
title: Schedule2Months
pagination_label: Schedule2Months
sidebar_label: Schedule2Months
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'Schedule2Months', 'V2026Schedule2Months'] 
slug: /tools/sdk/powershell/v2026/models/schedule2-months
tags: ['SDK', 'Software Development Kit', 'Schedule2Months', 'V2026Schedule2Months']
---


# Schedule2Months

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | [**SelectorType**](selector-type) |  | [required]
**Values** | **[]String** | The selected values.  | [required]
**Interval** | **Int32** | The selected interval for RANGE selectors.  | [optional] 

## Examples

- Prepare the resource
```powershell
$Schedule2Months = Initialize-V2026Schedule2Months  -Type null `
 -Values [MON, WED] `
 -Interval 3
```

- Convert the resource to JSON
```powershell
$Schedule2Months | ConvertTo-JSON
```


[[Back to top]](#) 

