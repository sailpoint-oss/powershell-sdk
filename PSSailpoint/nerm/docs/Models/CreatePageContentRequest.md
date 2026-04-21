---
id: nerm-create-page-content-request
title: CreatePageContentRequest
pagination_label: CreatePageContentRequest
sidebar_label: CreatePageContentRequest
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'CreatePageContentRequest', 'NERMCreatePageContentRequest'] 
slug: /tools/sdk/powershell/nerm/models/create-page-content-request
tags: ['SDK', 'Software Development Kit', 'CreatePageContentRequest', 'NERMCreatePageContentRequest']
---


# CreatePageContentRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**PageContent** | [**PageContent1**](page-content1) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CreatePageContentRequest = Initialize-NERMCreatePageContentRequest  -PageContent null
```

- Convert the resource to JSON
```powershell
$CreatePageContentRequest | ConvertTo-JSON
```


[[Back to top]](#) 

