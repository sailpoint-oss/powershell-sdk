---
id: nerm-create-page-element-request
title: CreatePageElementRequest
pagination_label: CreatePageElementRequest
sidebar_label: CreatePageElementRequest
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'CreatePageElementRequest', 'NERMCreatePageElementRequest'] 
slug: /tools/sdk/powershell/nerm/models/create-page-element-request
tags: ['SDK', 'Software Development Kit', 'CreatePageElementRequest', 'NERMCreatePageElementRequest']
---


# CreatePageElementRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**PageElement** | [**PageElement1**](page-element1) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CreatePageElementRequest = Initialize-NERMCreatePageElementRequest  -PageElement null
```

- Convert the resource to JSON
```powershell
$CreatePageElementRequest | ConvertTo-JSON
```


[[Back to top]](#) 

