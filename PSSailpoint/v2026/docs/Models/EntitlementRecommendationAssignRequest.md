---
id: v2026-entitlement-recommendation-assign-request
title: EntitlementRecommendationAssignRequest
pagination_label: EntitlementRecommendationAssignRequest
sidebar_label: EntitlementRecommendationAssignRequest
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'EntitlementRecommendationAssignRequest', 'V2026EntitlementRecommendationAssignRequest'] 
slug: /tools/sdk/powershell/v2026/models/entitlement-recommendation-assign-request
tags: ['SDK', 'Software Development Kit', 'EntitlementRecommendationAssignRequest', 'V2026EntitlementRecommendationAssignRequest']
---


# EntitlementRecommendationAssignRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Items** | **[]String** | The list of recommendation record IDs to assign. | [required]
**Assignee** | [**EntitlementRecommendationAssignee**](entitlement-recommendation-assignee) |  | [required]

## Examples

- Prepare the resource
```powershell
$EntitlementRecommendationAssignRequest = Initialize-V2026EntitlementRecommendationAssignRequest  -Items [79db50d4-723c-4aa0-a824-83c2205d82d1, a1b2c3d4-e5f6-7890-abcd-ef1234567890] `
 -Assignee null
```

- Convert the resource to JSON
```powershell
$EntitlementRecommendationAssignRequest | ConvertTo-JSON
```


[[Back to top]](#) 

