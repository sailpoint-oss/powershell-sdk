---
id: nerm-profile-attribute-rule-id
title: ProfileAttributeRuleId
pagination_label: ProfileAttributeRuleId
sidebar_label: ProfileAttributeRuleId
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'ProfileAttributeRuleId', 'NERMProfileAttributeRuleId'] 
slug: /tools/sdk/powershell/nerm/models/profile-attribute-rule-id
tags: ['SDK', 'Software Development Kit', 'ProfileAttributeRuleId', 'NERMProfileAttributeRuleId']
---


# ProfileAttributeRuleId

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | [optional] [readonly] 
**Uid** | **String** |  | [optional] [readonly] 
**Type** |  **Enum** [  "ProfileAttributeRule" ] |  | [required]
**ConditionObjectType** |  **Enum** [  "ProfileSelectAttribute",    "ProfileSearchAttribute",    "OwnerSelectAttribute",    "OwnerSearchAttribute",    "ContributorSelectAttribute",    "ContributorSearchAttribute" ] |  | [required]
**ConditionObjectId** | **String** |  | [required]
**ComparisonOperator** |  **Enum** [  "include?",    "exclude?" ] |  | [required]
**Value** | **String** |  | [required]

## Examples

- Prepare the resource
```powershell
$ProfileAttributeRuleId = Initialize-NERMProfileAttributeRuleId  -Id null `
 -Uid null `
 -Type null `
 -ConditionObjectType null `
 -ConditionObjectId null `
 -ComparisonOperator null `
 -Value null
```

- Convert the resource to JSON
```powershell
$ProfileAttributeRuleId | ConvertTo-JSON
```


[[Back to top]](#) 

