---
id: get-machine-account-recommendation-v1429-response
title: GetMachineAccountRecommendationV1429Response
pagination_label: GetMachineAccountRecommendationV1429Response
sidebar_label: GetMachineAccountRecommendationV1429Response
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'GetMachineAccountRecommendationV1429Response', 'GetMachineAccountRecommendationV1429Response'] 
slug: /tools/sdk/powershell/machineaccountrecommendation/models/get-machine-account-recommendation-v1429-response
tags: ['SDK', 'Software Development Kit', 'GetMachineAccountRecommendationV1429Response', 'GetMachineAccountRecommendationV1429Response']
---


# GetMachineAccountRecommendationV1429Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Message** | **AnyType** | A message describing the error | [optional] 

## Examples

- Prepare the resource
```powershell
$GetMachineAccountRecommendationV1429Response = Initialize-GetMachineAccountRecommendationV1429Response  -Message  Rate Limit Exceeded 
```

- Convert the resource to JSON
```powershell
$GetMachineAccountRecommendationV1429Response | ConvertTo-JSON
```


[[Back to top]](#) 

