---
id: nerm-create-rest-api-action-request
title: CreateRestApiActionRequest
pagination_label: CreateRestApiActionRequest
sidebar_label: CreateRestApiActionRequest
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'CreateRestApiActionRequest', 'NERMCreateRestApiActionRequest'] 
slug: /tools/sdk/powershell/nerm/models/create-rest-api-action-request
tags: ['SDK', 'Software Development Kit', 'CreateRestApiActionRequest', 'NERMCreateRestApiActionRequest']
---


# CreateRestApiActionRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**WorkflowAction** | [**RestApiAction**](rest-api-action) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CreateRestApiActionRequest = Initialize-NERMCreateRestApiActionRequest  -WorkflowAction null
```

- Convert the resource to JSON
```powershell
$CreateRestApiActionRequest | ConvertTo-JSON
```


[[Back to top]](#) 

