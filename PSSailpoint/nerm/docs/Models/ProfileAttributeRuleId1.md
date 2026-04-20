---
id: nerm-profile-attribute-rule-id1
title: ProfileAttributeRuleId1
pagination_label: ProfileAttributeRuleId1
sidebar_label: ProfileAttributeRuleId1
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'ProfileAttributeRuleId1', 'NERMProfileAttributeRuleId1'] 
slug: /tools/sdk/powershell/nerm/models/profile-attribute-rule-id1
tags: ['SDK', 'Software Development Kit', 'ProfileAttributeRuleId1', 'NERMProfileAttributeRuleId1']
---


# ProfileAttributeRuleId1

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** |  **Enum** [  "ProfileAttributeRule" ] |  | [required]
**ConditionObjectType** |  **Enum** [  "ProfileSelectAttribute",    "ProfileSearchAttribute",    "OwnerSelectAttribute",    "OwnerSearchAttribute",    "ContributorSelectAttribute",    "ContributorSearchAttribute" ] |  | [required]
**ConditionObjectId** | **String** |  | [required]
**ComparisonOperator** |  **Enum** [  "include?",    "exclude?" ] |  | [required]
**Value** | **String** |  | [required]

## Examples

- Prepare the resource
```powershell
$ProfileAttributeRuleId1 = Initialize-NERMProfileAttributeRuleId1  -Type null `
 -ConditionObjectType null `
 -ConditionObjectId null `
 -ComparisonOperator null `
 -Value null
```

- Convert the resource to JSON
```powershell
$ProfileAttributeRuleId1 | ConvertTo-JSON
```


[[Back to top]](#) 

