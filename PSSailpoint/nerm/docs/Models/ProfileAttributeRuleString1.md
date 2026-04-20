---
id: nerm-profile-attribute-rule-string1
title: ProfileAttributeRuleString1
pagination_label: ProfileAttributeRuleString1
sidebar_label: ProfileAttributeRuleString1
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'ProfileAttributeRuleString1', 'NERMProfileAttributeRuleString1'] 
slug: /tools/sdk/powershell/nerm/models/profile-attribute-rule-string1
tags: ['SDK', 'Software Development Kit', 'ProfileAttributeRuleString1', 'NERMProfileAttributeRuleString1']
---


# ProfileAttributeRuleString1

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** |  **Enum** [  "ProfileAttributeRule" ] |  | [required]
**ConditionObjectType** |  **Enum** [  "TextFieldAttribute",    "TextAreaAttribute" ] |  | [required]
**ConditionObjectId** | **String** |  | [required]
**ComparisonOperator** |  **Enum** [  "==",    "!=",    ">",    "<",    "start_with?",    "end_with?",    "include?" ] |  | [required]
**Value** | **String** |  | [required]

## Examples

- Prepare the resource
```powershell
$ProfileAttributeRuleString1 = Initialize-NERMProfileAttributeRuleString1  -Type null `
 -ConditionObjectType null `
 -ConditionObjectId null `
 -ComparisonOperator null `
 -Value Some value
```

- Convert the resource to JSON
```powershell
$ProfileAttributeRuleString1 | ConvertTo-JSON
```


[[Back to top]](#) 

