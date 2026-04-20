---
id: nerm-create-workflow-action-performer-request
title: CreateWorkflowActionPerformerRequest
pagination_label: CreateWorkflowActionPerformerRequest
sidebar_label: CreateWorkflowActionPerformerRequest
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'CreateWorkflowActionPerformerRequest', 'NERMCreateWorkflowActionPerformerRequest'] 
slug: /tools/sdk/powershell/nerm/models/create-workflow-action-performer-request
tags: ['SDK', 'Software Development Kit', 'CreateWorkflowActionPerformerRequest', 'NERMCreateWorkflowActionPerformerRequest']
---


# CreateWorkflowActionPerformerRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**WorkflowActionPerformers** | [**WorkflowActionPerformers1**](workflow-action-performers1) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CreateWorkflowActionPerformerRequest = Initialize-NERMCreateWorkflowActionPerformerRequest  -WorkflowActionPerformers null
```

- Convert the resource to JSON
```powershell
$CreateWorkflowActionPerformerRequest | ConvertTo-JSON
```


[[Back to top]](#) 

