---
id: v2026-entitlement-recommendation-assign-result
title: EntitlementRecommendationAssignResult
pagination_label: EntitlementRecommendationAssignResult
sidebar_label: EntitlementRecommendationAssignResult
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'EntitlementRecommendationAssignResult', 'V2026EntitlementRecommendationAssignResult'] 
slug: /tools/sdk/powershell/v2026/models/entitlement-recommendation-assign-result
tags: ['SDK', 'Software Development Kit', 'EntitlementRecommendationAssignResult', 'V2026EntitlementRecommendationAssignResult']
---


# EntitlementRecommendationAssignResult

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**BatchId** | **String** | The unique identifier of the assignment batch created by this request. | [optional] 

## Examples

- Prepare the resource
```powershell
$EntitlementRecommendationAssignResult = Initialize-V2026EntitlementRecommendationAssignResult  -BatchId 770e8400-e29b-41d4-a716-446655440099
```

- Convert the resource to JSON
```powershell
$EntitlementRecommendationAssignResult | ConvertTo-JSON
```


[[Back to top]](#) 

