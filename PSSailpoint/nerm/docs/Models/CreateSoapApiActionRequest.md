---
id: nerm-create-soap-api-action-request
title: CreateSoapApiActionRequest
pagination_label: CreateSoapApiActionRequest
sidebar_label: CreateSoapApiActionRequest
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'CreateSoapApiActionRequest', 'NERMCreateSoapApiActionRequest'] 
slug: /tools/sdk/powershell/nerm/models/create-soap-api-action-request
tags: ['SDK', 'Software Development Kit', 'CreateSoapApiActionRequest', 'NERMCreateSoapApiActionRequest']
---


# CreateSoapApiActionRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**WorkflowAction** | [**SoapApiAction**](soap-api-action) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CreateSoapApiActionRequest = Initialize-NERMCreateSoapApiActionRequest  -WorkflowAction null
```

- Convert the resource to JSON
```powershell
$CreateSoapApiActionRequest | ConvertTo-JSON
```


[[Back to top]](#) 

