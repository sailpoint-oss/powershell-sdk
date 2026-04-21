---
id: nerm-profile-attribute-rule-date
title: ProfileAttributeRuleDate
pagination_label: ProfileAttributeRuleDate
sidebar_label: ProfileAttributeRuleDate
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'ProfileAttributeRuleDate', 'NERMProfileAttributeRuleDate'] 
slug: /tools/sdk/powershell/nerm/models/profile-attribute-rule-date
tags: ['SDK', 'Software Development Kit', 'ProfileAttributeRuleDate', 'NERMProfileAttributeRuleDate']
---


# ProfileAttributeRuleDate

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | [optional] [readonly] 
**Uid** | **String** |  | [optional] [readonly] 
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
$ProfileAttributeRuleDate = Initialize-NERMProfileAttributeRuleDate  -Id null `
 -Uid null `
 -Type null `
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
$ProfileAttributeRuleDate | ConvertTo-JSON
```


[[Back to top]](#) 

