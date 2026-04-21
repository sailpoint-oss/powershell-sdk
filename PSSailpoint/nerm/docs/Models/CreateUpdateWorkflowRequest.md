---
id: nerm-create-update-workflow-request
title: CreateUpdateWorkflowRequest
pagination_label: CreateUpdateWorkflowRequest
sidebar_label: CreateUpdateWorkflowRequest
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'CreateUpdateWorkflowRequest', 'NERMCreateUpdateWorkflowRequest'] 
slug: /tools/sdk/powershell/nerm/models/create-update-workflow-request
tags: ['SDK', 'Software Development Kit', 'CreateUpdateWorkflowRequest', 'NERMCreateUpdateWorkflowRequest']
---


# CreateUpdateWorkflowRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Workflow** | [**UpdateWorkflow**](update-workflow) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CreateUpdateWorkflowRequest = Initialize-NERMCreateUpdateWorkflowRequest  -Workflow null
```

- Convert the resource to JSON
```powershell
$CreateUpdateWorkflowRequest | ConvertTo-JSON
```


[[Back to top]](#) 

