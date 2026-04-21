---
id: nerm-automated-workflow
title: AutomatedWorkflow
pagination_label: AutomatedWorkflow
sidebar_label: AutomatedWorkflow
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'AutomatedWorkflow', 'NERMAutomatedWorkflow'] 
slug: /tools/sdk/powershell/nerm/models/automated-workflow
tags: ['SDK', 'Software Development Kit', 'AutomatedWorkflow', 'NERMAutomatedWorkflow']
---


# AutomatedWorkflow

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ProfileTypeId** | **String** | The profile type the workflow effects. | [required]
**Status** |  **Enum** [  "Enabled",    "Disabled" ] | Whether or not the workflow is enabled or disabled. | [required]
**Uid** | **String** | The user-specified identifier of the workflow. | [required]
**Name** | **String** | Name of the workflow | [required]
**DisableFailureEmailNotifications** | **Boolean** | When honored at runtime, suppresses failure email notifications for this workflow's sessions. | [optional] 
**ConditionRulesAttributes** | [**[]AutomatedWorkflowConditionRulesAttributesInner**](automated-workflow-condition-rules-attributes-inner) | The ProfileTypeRule this workflow will be working with. | [required]

## Examples

- Prepare the resource
```powershell
$AutomatedWorkflow = Initialize-NERMAutomatedWorkflow  -ProfileTypeId 33f072dd-13b4-41e1-8ea0-16f2a59b57c8 `
 -Status Enabled `
 -Uid my_uid `
 -Name my_workflow `
 -DisableFailureEmailNotifications false `
 -ConditionRulesAttributes [{type=ProfileTypeRule, condition_object_type=DateAttribute, comparison_operator===, logical_operator=AND, value=true}]
```

- Convert the resource to JSON
```powershell
$AutomatedWorkflow | ConvertTo-JSON
```


[[Back to top]](#) 

