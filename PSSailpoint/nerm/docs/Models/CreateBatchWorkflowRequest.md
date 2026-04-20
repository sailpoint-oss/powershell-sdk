---
id: nerm-create-batch-workflow-request
title: CreateBatchWorkflowRequest
pagination_label: CreateBatchWorkflowRequest
sidebar_label: CreateBatchWorkflowRequest
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'CreateBatchWorkflowRequest', 'NERMCreateBatchWorkflowRequest'] 
slug: /tools/sdk/powershell/nerm/models/create-batch-workflow-request
tags: ['SDK', 'Software Development Kit', 'CreateBatchWorkflowRequest', 'NERMCreateBatchWorkflowRequest']
---


# CreateBatchWorkflowRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Workflow** | [**BatchWorkflow**](batch-workflow) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CreateBatchWorkflowRequest = Initialize-NERMCreateBatchWorkflowRequest  -Workflow null
```

- Convert the resource to JSON
```powershell
$CreateBatchWorkflowRequest | ConvertTo-JSON
```


[[Back to top]](#) 

