---
id: get-machine-account-recommendation-v1401-response
title: GetMachineAccountRecommendationV1401Response
pagination_label: GetMachineAccountRecommendationV1401Response
sidebar_label: GetMachineAccountRecommendationV1401Response
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'GetMachineAccountRecommendationV1401Response', 'GetMachineAccountRecommendationV1401Response'] 
slug: /tools/sdk/powershell/machineaccountrecommendation/models/get-machine-account-recommendation-v1401-response
tags: ['SDK', 'Software Development Kit', 'GetMachineAccountRecommendationV1401Response', 'GetMachineAccountRecommendationV1401Response']
---


# GetMachineAccountRecommendationV1401Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarError** | **AnyType** | A message describing the error | [optional] 

## Examples

- Prepare the resource
```powershell
$GetMachineAccountRecommendationV1401Response = Initialize-GetMachineAccountRecommendationV1401Response  -VarError JWT validation failed: JWT is expired
```

- Convert the resource to JSON
```powershell
$GetMachineAccountRecommendationV1401Response | ConvertTo-JSON
```


[[Back to top]](#) 

