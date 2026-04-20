---
id: nerm-create-login-workflow-request
title: CreateLoginWorkflowRequest
pagination_label: CreateLoginWorkflowRequest
sidebar_label: CreateLoginWorkflowRequest
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'CreateLoginWorkflowRequest', 'NERMCreateLoginWorkflowRequest'] 
slug: /tools/sdk/powershell/nerm/models/create-login-workflow-request
tags: ['SDK', 'Software Development Kit', 'CreateLoginWorkflowRequest', 'NERMCreateLoginWorkflowRequest']
---


# CreateLoginWorkflowRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Workflow** | [**LoginWorkflow**](login-workflow) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CreateLoginWorkflowRequest = Initialize-NERMCreateLoginWorkflowRequest  -Workflow null
```

- Convert the resource to JSON
```powershell
$CreateLoginWorkflowRequest | ConvertTo-JSON
```


[[Back to top]](#) 

