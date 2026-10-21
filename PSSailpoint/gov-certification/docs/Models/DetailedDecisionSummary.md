---
id: detailed-decision-summary
title: DetailedDecisionSummary
pagination_label: DetailedDecisionSummary
sidebar_label: DetailedDecisionSummary
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'DetailedDecisionSummary', 'DetailedDecisionSummary'] 
slug: /tools/sdk/powershell/govcertification/models/detailed-decision-summary
tags: ['SDK', 'Software Development Kit', 'DetailedDecisionSummary', 'DetailedDecisionSummary']
---


# DetailedDecisionSummary

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EntitlementDecisions** | [**DecisionStatistics**](decision-statistics) |  | [optional] 
**AccessProfileDecisions** | [**DecisionStatistics**](decision-statistics) |  | [optional] 
**RoleDecisions** | [**DecisionStatistics**](decision-statistics) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$DetailedDecisionSummary = Initialize-DetailedDecisionSummary  -EntitlementDecisions null `
 -AccessProfileDecisions null `
 -RoleDecisions null
```

- Convert the resource to JSON
```powershell
$DetailedDecisionSummary | ConvertTo-JSON
```


[[Back to top]](#) 

