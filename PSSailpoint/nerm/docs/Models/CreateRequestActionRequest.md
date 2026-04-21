---
id: nerm-create-request-action-request
title: CreateRequestActionRequest
pagination_label: CreateRequestActionRequest
sidebar_label: CreateRequestActionRequest
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'CreateRequestActionRequest', 'NERMCreateRequestActionRequest'] 
slug: /tools/sdk/powershell/nerm/models/create-request-action-request
tags: ['SDK', 'Software Development Kit', 'CreateRequestActionRequest', 'NERMCreateRequestActionRequest']
---


# CreateRequestActionRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**WorkflowAction** | [**RequestAction**](request-action) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CreateRequestActionRequest = Initialize-NERMCreateRequestActionRequest  -WorkflowAction null
```

- Convert the resource to JSON
```powershell
$CreateRequestActionRequest | ConvertTo-JSON
```


[[Back to top]](#) 

