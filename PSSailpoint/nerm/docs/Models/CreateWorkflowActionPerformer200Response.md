---
id: nerm-create-workflow-action-performer200-response
title: CreateWorkflowActionPerformer200Response
pagination_label: CreateWorkflowActionPerformer200Response
sidebar_label: CreateWorkflowActionPerformer200Response
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'CreateWorkflowActionPerformer200Response', 'NERMCreateWorkflowActionPerformer200Response'] 
slug: /tools/sdk/powershell/nerm/models/create-workflow-action-performer200-response
tags: ['SDK', 'Software Development Kit', 'CreateWorkflowActionPerformer200Response', 'NERMCreateWorkflowActionPerformer200Response']
---


# CreateWorkflowActionPerformer200Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**WorkflowActionPerformer** | [**WorkflowActionPerformers**](workflow-action-performers) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CreateWorkflowActionPerformer200Response = Initialize-NERMCreateWorkflowActionPerformer200Response  -WorkflowActionPerformer null
```

- Convert the resource to JSON
```powershell
$CreateWorkflowActionPerformer200Response | ConvertTo-JSON
```


[[Back to top]](#) 

