---
id: nerm-get-risk-levels200-response
title: GetRiskLevels200Response
pagination_label: GetRiskLevels200Response
sidebar_label: GetRiskLevels200Response
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'GetRiskLevels200Response', 'NERMGetRiskLevels200Response'] 
slug: /tools/sdk/powershell/nerm/models/get-risk-levels200-response
tags: ['SDK', 'Software Development Kit', 'GetRiskLevels200Response', 'NERMGetRiskLevels200Response']
---


# GetRiskLevels200Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**RiskLevels** | [**[]RiskLevel**](risk-level) |  | [optional] 
**Metadata** | [**Metadata**](metadata) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$GetRiskLevels200Response = Initialize-NERMGetRiskLevels200Response  -RiskLevels null `
 -Metadata null
```

- Convert the resource to JSON
```powershell
$GetRiskLevels200Response | ConvertTo-JSON
```


[[Back to top]](#) 

