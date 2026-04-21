---
id: nerm-advanced-search1-condition-rules-attributes-inner
title: AdvancedSearch1ConditionRulesAttributesInner
pagination_label: AdvancedSearch1ConditionRulesAttributesInner
sidebar_label: AdvancedSearch1ConditionRulesAttributesInner
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'AdvancedSearch1ConditionRulesAttributesInner', 'NERMAdvancedSearch1ConditionRulesAttributesInner'] 
slug: /tools/sdk/powershell/nerm/models/advanced-search1-condition-rules-attributes-inner
tags: ['SDK', 'Software Development Kit', 'AdvancedSearch1ConditionRulesAttributesInner', 'NERMAdvancedSearch1ConditionRulesAttributesInner']
---


# AdvancedSearch1ConditionRulesAttributesInner

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** |  **Enum** [  "ProfileTypeRule",    "ProfileStatusRule",    "ProfileAttributeRule",    "RiskRule" ] |  | [required]
**ComparisonOperator** |  **Enum** [  "==",    ">",    "<" ] |  | [required]
**Value** | **String** |  | [required]
**ConditionObjectType** |  **Enum** [  "ProfileSelectAttribute",    "ProfileSearchAttribute",    "OwnerSelectAttribute",    "OwnerSearchAttribute",    "ContributorSelectAttribute",    "ContributorSearchAttribute" ] |  | [required]
**ConditionObjectId** | **String** |  | [required]
**SecondaryAttributeType** |  **Enum** [  "DateAttribute" ] |  | [optional] 
**SecondaryAttributeId** | **String** |  | [optional] 
**SecondaryValue** |  **Enum** [  "OverallRisk" ] |  | [required]
**TertiaryValue** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$AdvancedSearch1ConditionRulesAttributesInner = Initialize-NERMAdvancedSearch1ConditionRulesAttributesInner  -Type null `
 -ComparisonOperator null `
 -Value null `
 -ConditionObjectType null `
 -ConditionObjectId null `
 -SecondaryAttributeType null `
 -SecondaryAttributeId null `
 -SecondaryValue null `
 -TertiaryValue 30
```

- Convert the resource to JSON
```powershell
$AdvancedSearch1ConditionRulesAttributesInner | ConvertTo-JSON
```


[[Back to top]](#) 

