---
id: v2024-recommendation-response-dto
title: RecommendationResponseDto
pagination_label: RecommendationResponseDto
sidebar_label: RecommendationResponseDto
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'RecommendationResponseDto', 'V2024RecommendationResponseDto'] 
slug: /tools/sdk/powershell/v2024/models/recommendation-response-dto
tags: ['SDK', 'Software Development Kit', 'RecommendationResponseDto', 'V2024RecommendationResponseDto']
---


# RecommendationResponseDto

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Response** | [**[]RecommendationResponse**](recommendation-response) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$RecommendationResponseDto = Initialize-PSSailpoint.V2024RecommendationResponseDto  -Response null
$RecommendationResponseDto = @"{  "Response": "null "}"@
```

- Convert the resource from JSON
```powershell
ConvertFrom-JsonToRecommendationResponseDto -Json $RecommendationResponseDto
```


[[Back to top]](#) 

