---
id: nerm-create-unassign-action-request
title: CreateUnassignActionRequest
pagination_label: CreateUnassignActionRequest
sidebar_label: CreateUnassignActionRequest
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'CreateUnassignActionRequest', 'NERMCreateUnassignActionRequest'] 
slug: /tools/sdk/powershell/nerm/models/create-unassign-action-request
tags: ['SDK', 'Software Development Kit', 'CreateUnassignActionRequest', 'NERMCreateUnassignActionRequest']
---


# CreateUnassignActionRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**WorkflowAction** | [**UnassignAction**](unassign-action) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CreateUnassignActionRequest = Initialize-NERMCreateUnassignActionRequest  -WorkflowAction null
```

- Convert the resource to JSON
```powershell
$CreateUnassignActionRequest | ConvertTo-JSON
```


[[Back to top]](#) 

