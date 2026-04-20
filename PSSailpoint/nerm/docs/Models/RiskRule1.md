---
id: nerm-risk-rule1
title: RiskRule1
pagination_label: RiskRule1
sidebar_label: RiskRule1
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'RiskRule1', 'NERMRiskRule1'] 
slug: /tools/sdk/powershell/nerm/models/risk-rule1
tags: ['SDK', 'Software Development Kit', 'RiskRule1', 'NERMRiskRule1']
---


# RiskRule1

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** |  **Enum** [  "RiskRule" ] |  | [required]
**ComparisonOperator** |  **Enum** [  "==",    ">",    "<" ] |  | [optional] 
**Value** | **String** |  | [required]
**SecondaryValue** |  **Enum** [  "OverallRisk" ] |  | [required]

## Examples

- Prepare the resource
```powershell
$RiskRule1 = Initialize-NERMRiskRule1  -Type null `
 -ComparisonOperator null `
 -Value null `
 -SecondaryValue null
```

- Convert the resource to JSON
```powershell
$RiskRule1 | ConvertTo-JSON
```


[[Back to top]](#) 

