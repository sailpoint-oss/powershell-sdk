---
id: beta-recommendation-response-dto
title: RecommendationResponseDto
pagination_label: RecommendationResponseDto
sidebar_label: RecommendationResponseDto
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'RecommendationResponseDto', 'BetaRecommendationResponseDto'] 
slug: /tools/sdk/powershell/beta/models/recommendation-response-dto
tags: ['SDK', 'Software Development Kit', 'RecommendationResponseDto', 'BetaRecommendationResponseDto']
---


# RecommendationResponseDto

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Response** | [**[]RecommendationResponse**](recommendation-response) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$RecommendationResponseDto = Initialize-PSSailpoint.BetaRecommendationResponseDto  -Response null
$RecommendationResponseDto = @"{  "Response": "null "}"@
```

- Convert the resource from JSON
```powershell
ConvertFrom-JsonToRecommendationResponseDto -Json $RecommendationResponseDto
```


[[Back to top]](#) 

