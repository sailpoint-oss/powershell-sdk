---
id: nerm-get-workflow-actions200-response
title: GetWorkflowActions200Response
pagination_label: GetWorkflowActions200Response
sidebar_label: GetWorkflowActions200Response
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'GetWorkflowActions200Response', 'NERMGetWorkflowActions200Response'] 
slug: /tools/sdk/powershell/nerm/models/get-workflow-actions200-response
tags: ['SDK', 'Software Development Kit', 'GetWorkflowActions200Response', 'NERMGetWorkflowActions200Response']
---


# GetWorkflowActions200Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**WorkflowActions** | [**WorkflowAction**](workflow-action) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$GetWorkflowActions200Response = Initialize-NERMGetWorkflowActions200Response  -WorkflowActions null
```

- Convert the resource to JSON
```powershell
$GetWorkflowActions200Response | ConvertTo-JSON
```


[[Back to top]](#) 

