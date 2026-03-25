---
id: v2026-metric-response
title: MetricResponse
pagination_label: MetricResponse
sidebar_label: MetricResponse
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'MetricResponse', 'V2026MetricResponse'] 
slug: /tools/sdk/powershell/v2026/models/metric-response
tags: ['SDK', 'Software Development Kit', 'MetricResponse', 'V2026MetricResponse']
---


# MetricResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** | the name of metric | [optional] 
**Value** | **Decimal** | the value associated to the metric | [optional] 

## Examples

- Prepare the resource
```powershell
$MetricResponse = Initialize-V2026MetricResponse  -Name null `
 -Value null
```

- Convert the resource to JSON
```powershell
$MetricResponse | ConvertTo-JSON
```


[[Back to top]](#) 

