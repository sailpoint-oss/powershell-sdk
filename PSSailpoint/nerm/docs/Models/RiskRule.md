---
id: nerm-risk-rule
title: RiskRule
pagination_label: RiskRule
sidebar_label: RiskRule
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'RiskRule', 'NERMRiskRule'] 
slug: /tools/sdk/powershell/nerm/models/risk-rule
tags: ['SDK', 'Software Development Kit', 'RiskRule', 'NERMRiskRule']
---


# RiskRule

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | [optional] [readonly] 
**Uid** | **String** |  | [optional] [readonly] 
**Type** |  **Enum** [  "RiskRule" ] |  | [required]
**ComparisonOperator** |  **Enum** [  "==",    ">",    "<" ] |  | [optional] 
**Value** | **String** |  | [required]
**SecondaryValue** |  **Enum** [  "OverallRisk" ] |  | [required]

## Examples

- Prepare the resource
```powershell
$RiskRule = Initialize-NERMRiskRule  -Id null `
 -Uid null `
 -Type null `
 -ComparisonOperator null `
 -Value null `
 -SecondaryValue null
```

- Convert the resource to JSON
```powershell
$RiskRule | ConvertTo-JSON
```


[[Back to top]](#) 

