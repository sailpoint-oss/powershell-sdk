---
id: beta-violation-prediction
title: ViolationPrediction
pagination_label: ViolationPrediction
sidebar_label: ViolationPrediction
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'ViolationPrediction', 'BetaViolationPrediction'] 
slug: /tools/sdk/powershell/beta/models/violation-prediction
tags: ['SDK', 'Software Development Kit', 'ViolationPrediction', 'BetaViolationPrediction']
---


# ViolationPrediction

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ViolationContexts** | [**[]ViolationContext**](violation-context) | List of Violation Contexts | [optional] 

## Examples

- Prepare the resource
```powershell
$ViolationPrediction = Initialize-PSSailpoint.BetaViolationPrediction  -ViolationContexts null
$ViolationPrediction = @"{  "ViolationContexts": "null "}"@
```

- Convert the resource from JSON
```powershell
ConvertFrom-JsonToViolationPrediction -Json $ViolationPrediction
```


[[Back to top]](#) 

