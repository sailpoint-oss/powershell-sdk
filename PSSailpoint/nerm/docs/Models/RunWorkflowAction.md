---
id: nerm-run-workflow-action
title: RunWorkflowAction
pagination_label: RunWorkflowAction
sidebar_label: RunWorkflowAction
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'RunWorkflowAction', 'NERMRunWorkflowAction'] 
slug: /tools/sdk/powershell/nerm/models/run-workflow-action
tags: ['SDK', 'Software Development Kit', 'RunWorkflowAction', 'NERMRunWorkflowAction']
---


# RunWorkflowAction

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**WorkflowId** | **String** | The workflow the workflow action belongs to. | [required]
**Description** | **String** | The description of the workflow action. | [required]
**Archived** | **Boolean** | If the workflow action is archived or not. | [optional] [default to $false]
**ConfigurationAttributes** | [**RunWorkflowActionConfigurationAttributes**](run-workflow-action-configuration-attributes) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$RunWorkflowAction = Initialize-NERMRunWorkflowAction  -WorkflowId 33f072dd-13b4-41e1-8ea0-16f2a59b57c8 `
 -Description Runs another workflow with the ability to pass data in between. `
 -Archived false `
 -ConfigurationAttributes null
```

- Convert the resource to JSON
```powershell
$RunWorkflowAction | ConvertTo-JSON
```


[[Back to top]](#) 

