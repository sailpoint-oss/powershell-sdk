---
id: nerm-create-workflow-page-request
title: CreateWorkflowPageRequest
pagination_label: CreateWorkflowPageRequest
sidebar_label: CreateWorkflowPageRequest
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'CreateWorkflowPageRequest', 'NERMCreateWorkflowPageRequest'] 
slug: /tools/sdk/powershell/nerm/models/create-workflow-page-request
tags: ['SDK', 'Software Development Kit', 'CreateWorkflowPageRequest', 'NERMCreateWorkflowPageRequest']
---


# CreateWorkflowPageRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Page** | [**WorkflowPage**](workflow-page) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CreateWorkflowPageRequest = Initialize-NERMCreateWorkflowPageRequest  -Page null
```

- Convert the resource to JSON
```powershell
$CreateWorkflowPageRequest | ConvertTo-JSON
```


[[Back to top]](#) 

