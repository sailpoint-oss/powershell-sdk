---
id: nerm-advanced-search
title: AdvancedSearch
pagination_label: AdvancedSearch
sidebar_label: AdvancedSearch
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'AdvancedSearch', 'NERMAdvancedSearch'] 
slug: /tools/sdk/powershell/nerm/models/advanced-search
tags: ['SDK', 'Software Development Kit', 'AdvancedSearch', 'NERMAdvancedSearch']
---


# AdvancedSearch

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | [optional] [readonly] 
**Uid** | **String** |  | [optional] [readonly] 
**Label** | **String** |  | [optional] 
**ConditionRulesAttributes** | [**[]AdvancedSearchConditionRulesAttributesInner**](advanced-search-condition-rules-attributes-inner) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$AdvancedSearch = Initialize-NERMAdvancedSearch  -Id null `
 -Uid null `
 -Label null `
 -ConditionRulesAttributes null
```

- Convert the resource to JSON
```powershell
$AdvancedSearch | ConvertTo-JSON
```


[[Back to top]](#) 

