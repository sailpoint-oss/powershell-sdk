---
id: v2026-entitlement-recommendation-assignee
title: EntitlementRecommendationAssignee
pagination_label: EntitlementRecommendationAssignee
sidebar_label: EntitlementRecommendationAssignee
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'EntitlementRecommendationAssignee', 'V2026EntitlementRecommendationAssignee'] 
slug: /tools/sdk/powershell/v2026/models/entitlement-recommendation-assignee
tags: ['SDK', 'Software Development Kit', 'EntitlementRecommendationAssignee', 'V2026EntitlementRecommendationAssignee']
---


# EntitlementRecommendationAssignee

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** |  **Enum** [  "IDENTITY",    "GOVERNANCE_GROUP",    "SOURCE_OWNER",    "ENTITLEMENT_OWNER" ] | The type of assignee. | [required]
**Value** | **String** | The ID of the identity or governance group to assign to. | [required]

## Examples

- Prepare the resource
```powershell
$EntitlementRecommendationAssignee = Initialize-V2026EntitlementRecommendationAssignee  -Type IDENTITY `
 -Value 2c91808a7f3b2e8a017f3c3e5f6d0099
```

- Convert the resource to JSON
```powershell
$EntitlementRecommendationAssignee | ConvertTo-JSON
```


[[Back to top]](#) 

