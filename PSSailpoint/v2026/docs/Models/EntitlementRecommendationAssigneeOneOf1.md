---
id: v2026-entitlement-recommendation-assignee-one-of1
title: EntitlementRecommendationAssigneeOneOf1
pagination_label: EntitlementRecommendationAssigneeOneOf1
sidebar_label: EntitlementRecommendationAssigneeOneOf1
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'EntitlementRecommendationAssigneeOneOf1', 'V2026EntitlementRecommendationAssigneeOneOf1'] 
slug: /tools/sdk/powershell/v2026/models/entitlement-recommendation-assignee-one-of1
tags: ['SDK', 'Software Development Kit', 'EntitlementRecommendationAssigneeOneOf1', 'V2026EntitlementRecommendationAssigneeOneOf1']
---


# EntitlementRecommendationAssigneeOneOf1

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** |  **Enum** [  "SOURCE_OWNER",    "ENTITLEMENT_OWNER" ] | The type of assignee. | [required]

## Examples

- Prepare the resource
```powershell
$EntitlementRecommendationAssigneeOneOf1 = Initialize-V2026EntitlementRecommendationAssigneeOneOf1  -Type SOURCE_OWNER
```

- Convert the resource to JSON
```powershell
$EntitlementRecommendationAssigneeOneOf1 | ConvertTo-JSON
```


[[Back to top]](#) 

