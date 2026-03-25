---
id: v2026-violation-prediction
title: ViolationPrediction
pagination_label: ViolationPrediction
sidebar_label: ViolationPrediction
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'ViolationPrediction', 'V2026ViolationPrediction'] 
slug: /tools/sdk/powershell/v2026/models/violation-prediction
tags: ['SDK', 'Software Development Kit', 'ViolationPrediction', 'V2026ViolationPrediction']
---


# ViolationPrediction

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ViolationContexts** | [**[]ViolationContext**](violation-context) | List of Violation Contexts | [optional] 

## Examples

- Prepare the resource
```powershell
$ViolationPrediction = Initialize-V2026ViolationPrediction  -ViolationContexts null
```

- Convert the resource to JSON
```powershell
$ViolationPrediction | ConvertTo-JSON
```


[[Back to top]](#) 

