---
id: entitlement-recommendation-assignee-one-of1
title: EntitlementRecommendationAssigneeOneOf1
pagination_label: EntitlementRecommendationAssigneeOneOf1
sidebar_label: EntitlementRecommendationAssigneeOneOf1
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'EntitlementRecommendationAssigneeOneOf1', 'EntitlementRecommendationAssigneeOneOf1'] 
slug: /tools/sdk/powershell/suggestedentitlementdescription/models/entitlement-recommendation-assignee-one-of1
tags: ['SDK', 'Software Development Kit', 'EntitlementRecommendationAssigneeOneOf1', 'EntitlementRecommendationAssigneeOneOf1']
---


# EntitlementRecommendationAssigneeOneOf1

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** |  **Enum** [  "SOURCE_OWNER",    "ENTITLEMENT_OWNER" ] | The type of assignee. | [required]

## Examples

- Prepare the resource
```powershell
$EntitlementRecommendationAssigneeOneOf1 = Initialize-EntitlementRecommendationAssigneeOneOf1  -Type SOURCE_OWNER
```

- Convert the resource to JSON
```powershell
$EntitlementRecommendationAssigneeOneOf1 | ConvertTo-JSON
```


[[Back to top]](#) 

