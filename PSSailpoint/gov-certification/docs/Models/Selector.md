---
id: selector
title: Selector
pagination_label: Selector
sidebar_label: Selector
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'Selector', 'Selector'] 
slug: /tools/sdk/powershell/govcertification/models/selector
tags: ['SDK', 'Software Development Kit', 'Selector', 'Selector']
---


# Selector

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** |  **Enum** [  "LIST",    "RANGE" ] | The type of a schedule selector - list or range. | [optional] 
**Values** | **[]String** | A list of a selector values. | [optional] 
**Interval** | **Int32** | Interval of the schedule selector | [optional] 

## Examples

- Prepare the resource
```powershell
$Selector = Initialize-Selector  -Type LIST `
 -Values ["1","2","3"] `
 -Interval 2
```

- Convert the resource to JSON
```powershell
$Selector | ConvertTo-JSON
```


[[Back to top]](#) 

