---
id: nerm-create-form-attribute-request
title: CreateFormAttributeRequest
pagination_label: CreateFormAttributeRequest
sidebar_label: CreateFormAttributeRequest
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'CreateFormAttributeRequest', 'NERMCreateFormAttributeRequest'] 
slug: /tools/sdk/powershell/nerm/models/create-form-attribute-request
tags: ['SDK', 'Software Development Kit', 'CreateFormAttributeRequest', 'NERMCreateFormAttributeRequest']
---


# CreateFormAttributeRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**FormAttribute** | [**FormAttributes**](form-attributes) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CreateFormAttributeRequest = Initialize-NERMCreateFormAttributeRequest  -FormAttribute null
```

- Convert the resource to JSON
```powershell
$CreateFormAttributeRequest | ConvertTo-JSON
```


[[Back to top]](#) 

