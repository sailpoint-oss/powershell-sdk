---
id: v2026-schedule2-hours
title: Schedule2Hours
pagination_label: Schedule2Hours
sidebar_label: Schedule2Hours
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'Schedule2Hours', 'V2026Schedule2Hours'] 
slug: /tools/sdk/powershell/v2026/models/schedule2-hours
tags: ['SDK', 'Software Development Kit', 'Schedule2Hours', 'V2026Schedule2Hours']
---


# Schedule2Hours

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | [**SelectorType**](selector-type) |  | [required]
**Values** | **[]String** | The selected values.  | [required]
**Interval** | **Int32** | The selected interval for RANGE selectors.  | [optional] 

## Examples

- Prepare the resource
```powershell
$Schedule2Hours = Initialize-V2026Schedule2Hours  -Type null `
 -Values [MON, WED] `
 -Interval 3
```

- Convert the resource to JSON
```powershell
$Schedule2Hours | ConvertTo-JSON
```


[[Back to top]](#) 

