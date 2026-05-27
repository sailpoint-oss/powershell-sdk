---
id: v2026-prompt-insights-metrics
title: PromptInsightsMetrics
pagination_label: PromptInsightsMetrics
sidebar_label: PromptInsightsMetrics
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'PromptInsightsMetrics', 'V2026PromptInsightsMetrics'] 
slug: /tools/sdk/powershell/v2026/models/prompt-insights-metrics
tags: ['SDK', 'Software Development Kit', 'PromptInsightsMetrics', 'V2026PromptInsightsMetrics']
---


# PromptInsightsMetrics

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**PromptsScanned** | **Int64** | Count of prompts scanned in the interval. | [optional] 
**PromptsRedacted** | **Int64** | Count of prompts redacted in the interval. | [optional] 

## Examples

- Prepare the resource
```powershell
$PromptInsightsMetrics = Initialize-V2026PromptInsightsMetrics  -PromptsScanned 125000 `
 -PromptsRedacted 89
```

- Convert the resource to JSON
```powershell
$PromptInsightsMetrics | ConvertTo-JSON
```


[[Back to top]](#) 

