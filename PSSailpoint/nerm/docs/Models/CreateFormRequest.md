---
id: nerm-create-form-request
title: CreateFormRequest
pagination_label: CreateFormRequest
sidebar_label: CreateFormRequest
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'CreateFormRequest', 'NERMCreateFormRequest'] 
slug: /tools/sdk/powershell/nerm/models/create-form-request
tags: ['SDK', 'Software Development Kit', 'CreateFormRequest', 'NERMCreateFormRequest']
---


# CreateFormRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Forms** | [**[]Forms**](forms) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CreateFormRequest = Initialize-NERMCreateFormRequest  -Forms null
```

- Convert the resource to JSON
```powershell
$CreateFormRequest | ConvertTo-JSON
```


[[Back to top]](#) 

