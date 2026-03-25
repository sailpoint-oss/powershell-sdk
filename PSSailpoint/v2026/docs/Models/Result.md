---
id: v2026-result
title: Result
pagination_label: Result
sidebar_label: Result
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'Result', 'V2026Result'] 
slug: /tools/sdk/powershell/v2026/models/result
tags: ['SDK', 'Software Development Kit', 'Result', 'V2026Result']
---


# Result

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Status** | **String** | Request result status | [optional] 

## Examples

- Prepare the resource
```powershell
$Result = Initialize-V2026Result  -Status Manual Task Created
```

- Convert the resource to JSON
```powershell
$Result | ConvertTo-JSON
```


[[Back to top]](#) 

