---
id: nerm-create-close-session-action-request
title: CreateCloseSessionActionRequest
pagination_label: CreateCloseSessionActionRequest
sidebar_label: CreateCloseSessionActionRequest
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'CreateCloseSessionActionRequest', 'NERMCreateCloseSessionActionRequest'] 
slug: /tools/sdk/powershell/nerm/models/create-close-session-action-request
tags: ['SDK', 'Software Development Kit', 'CreateCloseSessionActionRequest', 'NERMCreateCloseSessionActionRequest']
---


# CreateCloseSessionActionRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**WorkflowAction** | [**CloseSessionAction**](close-session-action) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CreateCloseSessionActionRequest = Initialize-NERMCreateCloseSessionActionRequest  -WorkflowAction null
```

- Convert the resource to JSON
```powershell
$CreateCloseSessionActionRequest | ConvertTo-JSON
```


[[Back to top]](#) 

