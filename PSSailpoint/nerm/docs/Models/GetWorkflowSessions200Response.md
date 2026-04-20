---
id: nerm-get-workflow-sessions200-response
title: GetWorkflowSessions200Response
pagination_label: GetWorkflowSessions200Response
sidebar_label: GetWorkflowSessions200Response
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'GetWorkflowSessions200Response', 'NERMGetWorkflowSessions200Response'] 
slug: /tools/sdk/powershell/nerm/models/get-workflow-sessions200-response
tags: ['SDK', 'Software Development Kit', 'GetWorkflowSessions200Response', 'NERMGetWorkflowSessions200Response']
---


# GetWorkflowSessions200Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**WorkflowSessions** | [**[]WorkflowSession**](workflow-session) |  | [optional] 
**Metadata** | [**Metadata**](metadata) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$GetWorkflowSessions200Response = Initialize-NERMGetWorkflowSessions200Response  -WorkflowSessions null `
 -Metadata null
```

- Convert the resource to JSON
```powershell
$GetWorkflowSessions200Response | ConvertTo-JSON
```


[[Back to top]](#) 

