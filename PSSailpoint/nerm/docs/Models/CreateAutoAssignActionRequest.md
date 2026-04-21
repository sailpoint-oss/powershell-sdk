---
id: nerm-create-auto-assign-action-request
title: CreateAutoAssignActionRequest
pagination_label: CreateAutoAssignActionRequest
sidebar_label: CreateAutoAssignActionRequest
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'CreateAutoAssignActionRequest', 'NERMCreateAutoAssignActionRequest'] 
slug: /tools/sdk/powershell/nerm/models/create-auto-assign-action-request
tags: ['SDK', 'Software Development Kit', 'CreateAutoAssignActionRequest', 'NERMCreateAutoAssignActionRequest']
---


# CreateAutoAssignActionRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**WorkflowAction** | [**AutoAssignAction**](auto-assign-action) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CreateAutoAssignActionRequest = Initialize-NERMCreateAutoAssignActionRequest  -WorkflowAction null
```

- Convert the resource to JSON
```powershell
$CreateAutoAssignActionRequest | ConvertTo-JSON
```


[[Back to top]](#) 

