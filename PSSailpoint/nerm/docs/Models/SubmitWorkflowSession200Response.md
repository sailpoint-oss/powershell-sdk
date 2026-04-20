---
id: nerm-submit-workflow-session200-response
title: SubmitWorkflowSession200Response
pagination_label: SubmitWorkflowSession200Response
sidebar_label: SubmitWorkflowSession200Response
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'SubmitWorkflowSession200Response', 'NERMSubmitWorkflowSession200Response'] 
slug: /tools/sdk/powershell/nerm/models/submit-workflow-session200-response
tags: ['SDK', 'Software Development Kit', 'SubmitWorkflowSession200Response', 'NERMSubmitWorkflowSession200Response']
---


# SubmitWorkflowSession200Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**WorkflowSession** | [**WorkflowSession**](workflow-session) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$SubmitWorkflowSession200Response = Initialize-NERMSubmitWorkflowSession200Response  -WorkflowSession null
```

- Convert the resource to JSON
```powershell
$SubmitWorkflowSession200Response | ConvertTo-JSON
```


[[Back to top]](#) 

