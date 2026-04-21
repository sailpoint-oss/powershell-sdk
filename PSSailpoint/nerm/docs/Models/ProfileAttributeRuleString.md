---
id: nerm-profile-attribute-rule-string
title: ProfileAttributeRuleString
pagination_label: ProfileAttributeRuleString
sidebar_label: ProfileAttributeRuleString
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'ProfileAttributeRuleString', 'NERMProfileAttributeRuleString'] 
slug: /tools/sdk/powershell/nerm/models/profile-attribute-rule-string
tags: ['SDK', 'Software Development Kit', 'ProfileAttributeRuleString', 'NERMProfileAttributeRuleString']
---


# ProfileAttributeRuleString

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | [optional] [readonly] 
**Uid** | **String** |  | [optional] [readonly] 
**Type** |  **Enum** [  "ProfileAttributeRule" ] |  | [required]
**ConditionObjectType** |  **Enum** [  "TextFieldAttribute",    "TextAreaAttribute" ] |  | [required]
**ConditionObjectId** | **String** |  | [required]
**ComparisonOperator** |  **Enum** [  "==",    "!=",    ">",    "<",    "start_with?",    "end_with?",    "include?" ] |  | [required]
**Value** | **String** |  | [required]

## Examples

- Prepare the resource
```powershell
$ProfileAttributeRuleString = Initialize-NERMProfileAttributeRuleString  -Id null `
 -Uid null `
 -Type null `
 -ConditionObjectType null `
 -ConditionObjectId null `
 -ComparisonOperator null `
 -Value Some value
```

- Convert the resource to JSON
```powershell
$ProfileAttributeRuleString | ConvertTo-JSON
```


[[Back to top]](#) 

