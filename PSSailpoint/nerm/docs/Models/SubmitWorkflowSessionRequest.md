---
id: nerm-submit-workflow-session-request
title: SubmitWorkflowSessionRequest
pagination_label: SubmitWorkflowSessionRequest
sidebar_label: SubmitWorkflowSessionRequest
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'SubmitWorkflowSessionRequest', 'NERMSubmitWorkflowSessionRequest'] 
slug: /tools/sdk/powershell/nerm/models/submit-workflow-session-request
tags: ['SDK', 'Software Development Kit', 'SubmitWorkflowSessionRequest', 'NERMSubmitWorkflowSessionRequest']
---


# SubmitWorkflowSessionRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**WorkflowSession** | [**WorkflowSession1**](workflow-session1) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$SubmitWorkflowSessionRequest = Initialize-NERMSubmitWorkflowSessionRequest  -WorkflowSession null
```

- Convert the resource to JSON
```powershell
$SubmitWorkflowSessionRequest | ConvertTo-JSON
```


[[Back to top]](#) 

