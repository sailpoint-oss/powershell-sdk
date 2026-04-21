---
id: nerm-create-run-workflow-action-request
title: CreateRunWorkflowActionRequest
pagination_label: CreateRunWorkflowActionRequest
sidebar_label: CreateRunWorkflowActionRequest
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'CreateRunWorkflowActionRequest', 'NERMCreateRunWorkflowActionRequest'] 
slug: /tools/sdk/powershell/nerm/models/create-run-workflow-action-request
tags: ['SDK', 'Software Development Kit', 'CreateRunWorkflowActionRequest', 'NERMCreateRunWorkflowActionRequest']
---


# CreateRunWorkflowActionRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**WorkflowAction** | [**RunWorkflowAction**](run-workflow-action) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CreateRunWorkflowActionRequest = Initialize-NERMCreateRunWorkflowActionRequest  -WorkflowAction null
```

- Convert the resource to JSON
```powershell
$CreateRunWorkflowActionRequest | ConvertTo-JSON
```


[[Back to top]](#) 

