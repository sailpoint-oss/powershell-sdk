---
id: nerm-get-risk-level200-response
title: GetRiskLevel200Response
pagination_label: GetRiskLevel200Response
sidebar_label: GetRiskLevel200Response
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'GetRiskLevel200Response', 'NERMGetRiskLevel200Response'] 
slug: /tools/sdk/powershell/nerm/models/get-risk-level200-response
tags: ['SDK', 'Software Development Kit', 'GetRiskLevel200Response', 'NERMGetRiskLevel200Response']
---


# GetRiskLevel200Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**RiskLevel** | [**RiskLevel**](risk-level) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$GetRiskLevel200Response = Initialize-NERMGetRiskLevel200Response  -RiskLevel null
```

- Convert the resource to JSON
```powershell
$GetRiskLevel200Response | ConvertTo-JSON
```


[[Back to top]](#) 

