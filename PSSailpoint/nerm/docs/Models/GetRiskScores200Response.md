---
id: nerm-get-risk-scores200-response
title: GetRiskScores200Response
pagination_label: GetRiskScores200Response
sidebar_label: GetRiskScores200Response
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'GetRiskScores200Response', 'NERMGetRiskScores200Response'] 
slug: /tools/sdk/powershell/nerm/models/get-risk-scores200-response
tags: ['SDK', 'Software Development Kit', 'GetRiskScores200Response', 'NERMGetRiskScores200Response']
---


# GetRiskScores200Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**RiskScores** | [**[]RiskScore**](risk-score) |  | [optional] 
**Metadata** | [**Metadata**](metadata) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$GetRiskScores200Response = Initialize-NERMGetRiskScores200Response  -RiskScores null `
 -Metadata null
```

- Convert the resource to JSON
```powershell
$GetRiskScores200Response | ConvertTo-JSON
```


[[Back to top]](#) 

