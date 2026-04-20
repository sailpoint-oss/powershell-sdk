---
id: nerm-risk-level
title: RiskLevel
pagination_label: RiskLevel
sidebar_label: RiskLevel
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'RiskLevel', 'NERMRiskLevel'] 
slug: /tools/sdk/powershell/nerm/models/risk-level
tags: ['SDK', 'Software Development Kit', 'RiskLevel', 'NERMRiskLevel']
---


# RiskLevel

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | [optional] [readonly] 
**Uid** | **String** |  | [optional] [readonly] 
**Label** | **String** |  | [optional] 
**Points** | **Decimal** |  | [optional] 
**Order** | **Int32** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$RiskLevel = Initialize-NERMRiskLevel  -Id null `
 -Uid null `
 -Label null `
 -Points null `
 -Order null
```

- Convert the resource to JSON
```powershell
$RiskLevel | ConvertTo-JSON
```


[[Back to top]](#) 

