---
id: nerm-advanced-search-condition-rules-attributes-inner
title: AdvancedSearchConditionRulesAttributesInner
pagination_label: AdvancedSearchConditionRulesAttributesInner
sidebar_label: AdvancedSearchConditionRulesAttributesInner
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'AdvancedSearchConditionRulesAttributesInner', 'NERMAdvancedSearchConditionRulesAttributesInner'] 
slug: /tools/sdk/powershell/nerm/models/advanced-search-condition-rules-attributes-inner
tags: ['SDK', 'Software Development Kit', 'AdvancedSearchConditionRulesAttributesInner', 'NERMAdvancedSearchConditionRulesAttributesInner']
---


# AdvancedSearchConditionRulesAttributesInner

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | [optional] [readonly] 
**Uid** | **String** |  | [optional] [readonly] 
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
$AdvancedSearchConditionRulesAttributesInner = Initialize-NERMAdvancedSearchConditionRulesAttributesInner  -Id null `
 -Uid null `
 -Type null `
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
$AdvancedSearchConditionRulesAttributesInner | ConvertTo-JSON
```


[[Back to top]](#) 

