---
id: get-recommendations-v1401-response
title: GetRecommendationsV1401Response
pagination_label: GetRecommendationsV1401Response
sidebar_label: GetRecommendationsV1401Response
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'GetRecommendationsV1401Response', 'GetRecommendationsV1401Response'] 
slug: /tools/sdk/powershell/iairecommendationsv1/models/get-recommendations-v1401-response
tags: ['SDK', 'Software Development Kit', 'GetRecommendationsV1401Response', 'GetRecommendationsV1401Response']
---


# GetRecommendationsV1401Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarError** | [**AnyType**](any-type) | A message describing the error | [optional] 

## Examples

- Prepare the resource
```powershell
$GetRecommendationsV1401Response = Initialize-GetRecommendationsV1401Response  -VarError JWT validation failed: JWT is expired
```

- Convert the resource to JSON
```powershell
$GetRecommendationsV1401Response | ConvertTo-JSON
```


[[Back to top]](#) 

