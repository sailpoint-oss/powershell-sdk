---
id: nerm-create-create-workflow-request
title: CreateCreateWorkflowRequest
pagination_label: CreateCreateWorkflowRequest
sidebar_label: CreateCreateWorkflowRequest
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'CreateCreateWorkflowRequest', 'NERMCreateCreateWorkflowRequest'] 
slug: /tools/sdk/powershell/nerm/models/create-create-workflow-request
tags: ['SDK', 'Software Development Kit', 'CreateCreateWorkflowRequest', 'NERMCreateCreateWorkflowRequest']
---


# CreateCreateWorkflowRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Workflow** | [**CreateWorkflow**](create-workflow) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CreateCreateWorkflowRequest = Initialize-NERMCreateCreateWorkflowRequest  -Workflow null
```

- Convert the resource to JSON
```powershell
$CreateCreateWorkflowRequest | ConvertTo-JSON
```


[[Back to top]](#) 

