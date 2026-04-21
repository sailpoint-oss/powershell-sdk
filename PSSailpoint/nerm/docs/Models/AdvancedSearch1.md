---
id: nerm-advanced-search1
title: AdvancedSearch1
pagination_label: AdvancedSearch1
sidebar_label: AdvancedSearch1
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'AdvancedSearch1', 'NERMAdvancedSearch1'] 
slug: /tools/sdk/powershell/nerm/models/advanced-search1
tags: ['SDK', 'Software Development Kit', 'AdvancedSearch1', 'NERMAdvancedSearch1']
---


# AdvancedSearch1

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Label** | **String** |  | [optional] 
**ConditionRulesAttributes** | [**[]AdvancedSearch1ConditionRulesAttributesInner**](advanced-search1-condition-rules-attributes-inner) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$AdvancedSearch1 = Initialize-NERMAdvancedSearch1  -Label null `
 -ConditionRulesAttributes null
```

- Convert the resource to JSON
```powershell
$AdvancedSearch1 | ConvertTo-JSON
```


[[Back to top]](#) 

