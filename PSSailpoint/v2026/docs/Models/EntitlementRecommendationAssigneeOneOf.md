---
id: v2026-entitlement-recommendation-assignee-one-of
title: EntitlementRecommendationAssigneeOneOf
pagination_label: EntitlementRecommendationAssigneeOneOf
sidebar_label: EntitlementRecommendationAssigneeOneOf
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'EntitlementRecommendationAssigneeOneOf', 'V2026EntitlementRecommendationAssigneeOneOf'] 
slug: /tools/sdk/powershell/v2026/models/entitlement-recommendation-assignee-one-of
tags: ['SDK', 'Software Development Kit', 'EntitlementRecommendationAssigneeOneOf', 'V2026EntitlementRecommendationAssigneeOneOf']
---


# EntitlementRecommendationAssigneeOneOf

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** |  **Enum** [  "IDENTITY",    "GOVERNANCE_GROUP" ] | The type of assignee. | [required]
**Value** | **String** | The ID of the identity or governance group to assign to. | [required]

## Examples

- Prepare the resource
```powershell
$EntitlementRecommendationAssigneeOneOf = Initialize-V2026EntitlementRecommendationAssigneeOneOf  -Type IDENTITY `
 -Value 2c91808a7f3b2e8a017f3c3e5f6d0099
```

- Convert the resource to JSON
```powershell
$EntitlementRecommendationAssigneeOneOf | ConvertTo-JSON
```


[[Back to top]](#) 

