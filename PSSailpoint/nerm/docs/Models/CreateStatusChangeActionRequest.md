---
id: nerm-create-status-change-action-request
title: CreateStatusChangeActionRequest
pagination_label: CreateStatusChangeActionRequest
sidebar_label: CreateStatusChangeActionRequest
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'CreateStatusChangeActionRequest', 'NERMCreateStatusChangeActionRequest'] 
slug: /tools/sdk/powershell/nerm/models/create-status-change-action-request
tags: ['SDK', 'Software Development Kit', 'CreateStatusChangeActionRequest', 'NERMCreateStatusChangeActionRequest']
---


# CreateStatusChangeActionRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**WorkflowAction** | [**StatusChangeAction**](status-change-action) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CreateStatusChangeActionRequest = Initialize-NERMCreateStatusChangeActionRequest  -WorkflowAction null
```

- Convert the resource to JSON
```powershell
$CreateStatusChangeActionRequest | ConvertTo-JSON
```


[[Back to top]](#) 

