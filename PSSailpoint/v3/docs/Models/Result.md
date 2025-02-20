---
id: result
title: Result
pagination_label: Result
sidebar_label: Result
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'Result', 'Result'] 
slug: /tools/sdk/powershell/v3/models/result
tags: ['SDK', 'Software Development Kit', 'Result', 'Result']
---


# Result

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Status** | **String** | Request result status | [optional] 

## Examples

- Prepare the resource
```powershell
$Result = Initialize-PSSailpoint.V3Result  -Status Manual Task Created
$Result = @"{  "Status": "Manual Task Created" }"@
```

- Convert the resource from JSON
```powershell
ConvertFrom-JsonToResult -Json $Result
```


[[Back to top]](#) 

