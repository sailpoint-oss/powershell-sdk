---
id: nerm-get-risk-score200-response
title: GetRiskScore200Response
pagination_label: GetRiskScore200Response
sidebar_label: GetRiskScore200Response
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'GetRiskScore200Response', 'NERMGetRiskScore200Response'] 
slug: /tools/sdk/powershell/nerm/models/get-risk-score200-response
tags: ['SDK', 'Software Development Kit', 'GetRiskScore200Response', 'NERMGetRiskScore200Response']
---


# GetRiskScore200Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**RiskScore** | [**RiskScore**](risk-score) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$GetRiskScore200Response = Initialize-NERMGetRiskScore200Response  -RiskScore null
```

- Convert the resource to JSON
```powershell
$GetRiskScore200Response | ConvertTo-JSON
```


[[Back to top]](#) 

