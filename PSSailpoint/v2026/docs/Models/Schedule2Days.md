---
id: v2026-schedule2-days
title: Schedule2Days
pagination_label: Schedule2Days
sidebar_label: Schedule2Days
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'Schedule2Days', 'V2026Schedule2Days'] 
slug: /tools/sdk/powershell/v2026/models/schedule2-days
tags: ['SDK', 'Software Development Kit', 'Schedule2Days', 'V2026Schedule2Days']
---


# Schedule2Days

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | [**SelectorType**](selector-type) |  | [required]
**Values** | **[]String** | The selected values.  | [required]
**Interval** | **Int32** | The selected interval for RANGE selectors.  | [optional] 

## Examples

- Prepare the resource
```powershell
$Schedule2Days = Initialize-V2026Schedule2Days  -Type null `
 -Values [MON, WED] `
 -Interval 3
```

- Convert the resource to JSON
```powershell
$Schedule2Days | ConvertTo-JSON
```


[[Back to top]](#) 

