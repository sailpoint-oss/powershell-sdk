---
id: nerm-create-fulfillment-action-request
title: CreateFulfillmentActionRequest
pagination_label: CreateFulfillmentActionRequest
sidebar_label: CreateFulfillmentActionRequest
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'CreateFulfillmentActionRequest', 'NERMCreateFulfillmentActionRequest'] 
slug: /tools/sdk/powershell/nerm/models/create-fulfillment-action-request
tags: ['SDK', 'Software Development Kit', 'CreateFulfillmentActionRequest', 'NERMCreateFulfillmentActionRequest']
---


# CreateFulfillmentActionRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**WorkflowAction** | [**FulfillmentAction**](fulfillment-action) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CreateFulfillmentActionRequest = Initialize-NERMCreateFulfillmentActionRequest  -WorkflowAction null
```

- Convert the resource to JSON
```powershell
$CreateFulfillmentActionRequest | ConvertTo-JSON
```


[[Back to top]](#) 

