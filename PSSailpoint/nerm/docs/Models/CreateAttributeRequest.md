---
id: nerm-create-attribute-request
title: CreateAttributeRequest
pagination_label: CreateAttributeRequest
sidebar_label: CreateAttributeRequest
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'CreateAttributeRequest', 'NERMCreateAttributeRequest'] 
slug: /tools/sdk/powershell/nerm/models/create-attribute-request
tags: ['SDK', 'Software Development Kit', 'CreateAttributeRequest', 'NERMCreateAttributeRequest']
---


# CreateAttributeRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**NeAttribute** | [**Attribute1**](attribute1) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CreateAttributeRequest = Initialize-NERMCreateAttributeRequest  -NeAttribute null
```

- Convert the resource to JSON
```powershell
$CreateAttributeRequest | ConvertTo-JSON
```


[[Back to top]](#) 

