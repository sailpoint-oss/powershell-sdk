---
id: get-prompt-insights-metrics-v1401-response
title: GetPromptInsightsMetricsV1401Response
pagination_label: GetPromptInsightsMetricsV1401Response
sidebar_label: GetPromptInsightsMetricsV1401Response
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'GetPromptInsightsMetricsV1401Response', 'GetPromptInsightsMetricsV1401Response'] 
slug: /tools/sdk/powershell/promptinsights/models/get-prompt-insights-metrics-v1401-response
tags: ['SDK', 'Software Development Kit', 'GetPromptInsightsMetricsV1401Response', 'GetPromptInsightsMetricsV1401Response']
---


# GetPromptInsightsMetricsV1401Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarError** | **AnyType** | A message describing the error | [optional] 

## Examples

- Prepare the resource
```powershell
$GetPromptInsightsMetricsV1401Response = Initialize-GetPromptInsightsMetricsV1401Response  -VarError JWT validation failed: JWT is expired
```

- Convert the resource to JSON
```powershell
$GetPromptInsightsMetricsV1401Response | ConvertTo-JSON
```


[[Back to top]](#) 

