---
id: nerm-automated-workflow-condition-rules-attributes-inner
title: AutomatedWorkflowConditionRulesAttributesInner
pagination_label: AutomatedWorkflowConditionRulesAttributesInner
sidebar_label: AutomatedWorkflowConditionRulesAttributesInner
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'AutomatedWorkflowConditionRulesAttributesInner', 'NERMAutomatedWorkflowConditionRulesAttributesInner'] 
slug: /tools/sdk/powershell/nerm/models/automated-workflow-condition-rules-attributes-inner
tags: ['SDK', 'Software Development Kit', 'AutomatedWorkflowConditionRulesAttributesInner', 'NERMAutomatedWorkflowConditionRulesAttributesInner']
---


# AutomatedWorkflowConditionRulesAttributesInner

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**LogicalOperator** |  **Enum** [  "AND",    "OR" ] | The type of condition rule. | [required]
**ComparisonOperator** |  **Enum** [  "<",    ">",    "==",    "before",    "include?",    "absent?",    "after" ] | The operator used by the condition rule. | [required]
**ConditionObjectId** | **String** | UUID for object targeted by the condition. | [optional] 
**ConditionObjectType** | **String** | Type of object targeted by the condition. | [required]
**SecondaryValue** | **String** | Used for time_frame comparison. | [optional] 
**TertiaryValue** | **String** | Represents the days of a temporal comparison. | [optional] 
**Value** | **String** | The value being compared against. | [optional] 
**Order** | **Int32** | If there are multiple rules against one workflow, this is the order that they are ran in. | [optional] 
**Type** |  **Enum** [  "RiskRule",    "ProfileIdRule",    "ProfileTypeRule",    "ProfileExistsRule",    "ProfileStatusRule",    "SessionAttributeRule",    "ProfileAttributeRule",    "ProfileDoesNotExistRule",    "IdentityProofingRule" ] | The type of condition rule. | [required]

## Examples

- Prepare the resource
```powershell
$AutomatedWorkflowConditionRulesAttributesInner = Initialize-NERMAutomatedWorkflowConditionRulesAttributesInner  -LogicalOperator AND `
 -ComparisonOperator == `
 -ConditionObjectId cc844e99-9895-43d0-9d17-8f606b2158ba `
 -ConditionObjectType DateAttribute `
 -SecondaryValue before `
 -TertiaryValue before `
 -Value true `
 -Order 1 `
 -Type ProfileTypeRule
```

- Convert the resource to JSON
```powershell
$AutomatedWorkflowConditionRulesAttributesInner | ConvertTo-JSON
```


[[Back to top]](#) 

