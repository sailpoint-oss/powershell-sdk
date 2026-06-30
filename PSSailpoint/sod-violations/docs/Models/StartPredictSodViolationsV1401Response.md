---
id: start-predict-sod-violations-v1401-response
title: StartPredictSodViolationsV1401Response
pagination_label: StartPredictSodViolationsV1401Response
sidebar_label: StartPredictSodViolationsV1401Response
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'StartPredictSodViolationsV1401Response', 'StartPredictSodViolationsV1401Response'] 
slug: /tools/sdk/powershell/sodviolations/models/start-predict-sod-violations-v1401-response
tags: ['SDK', 'Software Development Kit', 'StartPredictSodViolationsV1401Response', 'StartPredictSodViolationsV1401Response']
---


# StartPredictSodViolationsV1401Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarError** | **AnyType** | A message describing the error | [optional] 

## Examples

- Prepare the resource
```powershell
$StartPredictSodViolationsV1401Response = Initialize-StartPredictSodViolationsV1401Response  -VarError JWT validation failed: JWT is expired
```

- Convert the resource to JSON
```powershell
$StartPredictSodViolationsV1401Response | ConvertTo-JSON
```


[[Back to top]](#) 

