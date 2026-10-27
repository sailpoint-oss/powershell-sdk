---
id: machine-account-recommendation-explanation
title: MachineAccountRecommendationExplanation
pagination_label: MachineAccountRecommendationExplanation
sidebar_label: MachineAccountRecommendationExplanation
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'MachineAccountRecommendationExplanation', 'MachineAccountRecommendationExplanation'] 
slug: /tools/sdk/powershell/machineaccountrecommendation/models/machine-account-recommendation-explanation
tags: ['SDK', 'Software Development Kit', 'MachineAccountRecommendationExplanation', 'MachineAccountRecommendationExplanation']
---


# MachineAccountRecommendationExplanation

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Feature** | **String** | Account feature that contributed to the recommendation. | [optional] 

## Examples

- Prepare the resource
```powershell
$MachineAccountRecommendationExplanation = Initialize-MachineAccountRecommendationExplanation  -Feature high-privilege-grant
```

- Convert the resource to JSON
```powershell
$MachineAccountRecommendationExplanation | ConvertTo-JSON
```


[[Back to top]](#) 

