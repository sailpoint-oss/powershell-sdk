---
id: nerm-profile-attribute-rule-date1
title: ProfileAttributeRuleDate1
pagination_label: ProfileAttributeRuleDate1
sidebar_label: ProfileAttributeRuleDate1
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'ProfileAttributeRuleDate1', 'NERMProfileAttributeRuleDate1'] 
slug: /tools/sdk/powershell/nerm/models/profile-attribute-rule-date1
tags: ['SDK', 'Software Development Kit', 'ProfileAttributeRuleDate1', 'NERMProfileAttributeRuleDate1']
---


# ProfileAttributeRuleDate1

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** |  **Enum** [  "ProfileAttributeRule" ] |  | [required]
**ConditionObjectType** |  **Enum** [  "DateAttribute" ] |  | [required]
**ConditionObjectId** | **String** |  | [optional] 
**SecondaryAttributeType** |  **Enum** [  "DateAttribute" ] |  | [optional] 
**SecondaryAttributeId** | **String** |  | [optional] 
**ComparisonOperator** |  **Enum** [  ">",    "<",    "after",    "before" ] |  | [optional] 
**Value** |  **Enum** [  "Today",    "<uid>" ] |  | [required]
**SecondaryValue** |  **Enum** [  "after",    "before" ] |  | [optional] 
**TertiaryValue** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ProfileAttributeRuleDate1 = Initialize-NERMProfileAttributeRuleDate1  -Type null `
 -ConditionObjectType null `
 -ConditionObjectId null `
 -SecondaryAttributeType null `
 -SecondaryAttributeId null `
 -ComparisonOperator null `
 -Value null `
 -SecondaryValue null `
 -TertiaryValue 30
```

- Convert the resource to JSON
```powershell
$ProfileAttributeRuleDate1 | ConvertTo-JSON
```


[[Back to top]](#) 

