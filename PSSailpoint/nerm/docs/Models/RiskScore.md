---
id: nerm-risk-score
title: RiskScore
pagination_label: RiskScore
sidebar_label: RiskScore
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'RiskScore', 'NERMRiskScore'] 
slug: /tools/sdk/powershell/nerm/models/risk-score
tags: ['SDK', 'Software Development Kit', 'RiskScore', 'NERMRiskScore']
---


# RiskScore

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | [optional] [readonly] 
**Uid** | **String** |  | [optional] [readonly] 
**ObjectId** | **String** |  | [optional] 
**ObjectType** |  **Enum** [  "Profile",    "WorkflowSession" ] |  | [optional] 
**OverallScore** | **Decimal** |  | [optional] 
**OverallRiskLevelId** | **String** |  | [optional] 
**ImpactScore** | **Decimal** |  | [optional] 
**ImpactRiskLevelId** | **String** |  | [optional] 
**ProbabilityScore** | **Decimal** |  | [optional] 
**ProbabilityRiskLevelId** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$RiskScore = Initialize-NERMRiskScore  -Id null `
 -Uid null `
 -ObjectId null `
 -ObjectType null `
 -OverallScore null `
 -OverallRiskLevelId null `
 -ImpactScore null `
 -ImpactRiskLevelId null `
 -ProbabilityScore null `
 -ProbabilityRiskLevelId null
```

- Convert the resource to JSON
```powershell
$RiskScore | ConvertTo-JSON
```


[[Back to top]](#) 

