---
id: nerm-create-create-workflow200-response
title: CreateCreateWorkflow200Response
pagination_label: CreateCreateWorkflow200Response
sidebar_label: CreateCreateWorkflow200Response
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'CreateCreateWorkflow200Response', 'NERMCreateCreateWorkflow200Response'] 
slug: /tools/sdk/powershell/nerm/models/create-create-workflow200-response
tags: ['SDK', 'Software Development Kit', 'CreateCreateWorkflow200Response', 'NERMCreateCreateWorkflow200Response']
---


# CreateCreateWorkflow200Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Workflow** | [**WorkflowSession**](workflow-session) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CreateCreateWorkflow200Response = Initialize-NERMCreateCreateWorkflow200Response  -Workflow null
```

- Convert the resource to JSON
```powershell
$CreateCreateWorkflow200Response | ConvertTo-JSON
```


[[Back to top]](#) 

