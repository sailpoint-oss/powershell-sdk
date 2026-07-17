---
id: int64-string-key-value-pair
title: Int64StringKeyValuePair
pagination_label: Int64StringKeyValuePair
sidebar_label: Int64StringKeyValuePair
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'Int64StringKeyValuePair', 'Int64StringKeyValuePair'] 
slug: /tools/sdk/powershell/dataaccesssecurity/models/int64-string-key-value-pair
tags: ['SDK', 'Software Development Kit', 'Int64StringKeyValuePair', 'Int64StringKeyValuePair']
---


# Int64StringKeyValuePair

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Key** | **Int64** | The key for the tag or pair. | [optional] 
**Value** | **String** | The value for the tag or pair. | [optional] 

## Examples

- Prepare the resource
```powershell
$Int64StringKeyValuePair = Initialize-Int64StringKeyValuePair  -Key 1 `
 -Value Confidential
```

- Convert the resource to JSON
```powershell
$Int64StringKeyValuePair | ConvertTo-JSON
```


[[Back to top]](#) 

