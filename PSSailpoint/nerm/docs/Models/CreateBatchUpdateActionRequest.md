---
id: nerm-create-batch-update-action-request
title: CreateBatchUpdateActionRequest
pagination_label: CreateBatchUpdateActionRequest
sidebar_label: CreateBatchUpdateActionRequest
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'CreateBatchUpdateActionRequest', 'NERMCreateBatchUpdateActionRequest'] 
slug: /tools/sdk/powershell/nerm/models/create-batch-update-action-request
tags: ['SDK', 'Software Development Kit', 'CreateBatchUpdateActionRequest', 'NERMCreateBatchUpdateActionRequest']
---


# CreateBatchUpdateActionRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**WorkflowAction** | [**BatchUpdateAction**](batch-update-action) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CreateBatchUpdateActionRequest = Initialize-NERMCreateBatchUpdateActionRequest  -WorkflowAction null
```

- Convert the resource to JSON
```powershell
$CreateBatchUpdateActionRequest | ConvertTo-JSON
```


[[Back to top]](#) 

