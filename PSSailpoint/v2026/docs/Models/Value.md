---
id: v2026-value
title: Value
pagination_label: Value
sidebar_label: Value
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'Value', 'V2026Value'] 
slug: /tools/sdk/powershell/v2026/models/value
tags: ['SDK', 'Software Development Kit', 'Value', 'V2026Value']
---


# Value

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** | The type of attribute value | [optional] 
**Value** | **String** | The attribute value | [optional] 

## Examples

- Prepare the resource
```powershell
$Value = Initialize-V2026Value  -Type STRING `
 -Value Austin
```

- Convert the resource to JSON
```powershell
$Value | ConvertTo-JSON
```


[[Back to top]](#) 

