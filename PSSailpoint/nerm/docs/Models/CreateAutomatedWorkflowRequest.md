---
id: nerm-create-automated-workflow-request
title: CreateAutomatedWorkflowRequest
pagination_label: CreateAutomatedWorkflowRequest
sidebar_label: CreateAutomatedWorkflowRequest
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'CreateAutomatedWorkflowRequest', 'NERMCreateAutomatedWorkflowRequest'] 
slug: /tools/sdk/powershell/nerm/models/create-automated-workflow-request
tags: ['SDK', 'Software Development Kit', 'CreateAutomatedWorkflowRequest', 'NERMCreateAutomatedWorkflowRequest']
---


# CreateAutomatedWorkflowRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Workflow** | [**AutomatedWorkflow**](automated-workflow) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CreateAutomatedWorkflowRequest = Initialize-NERMCreateAutomatedWorkflowRequest  -Workflow null
```

- Convert the resource to JSON
```powershell
$CreateAutomatedWorkflowRequest | ConvertTo-JSON
```


[[Back to top]](#) 

