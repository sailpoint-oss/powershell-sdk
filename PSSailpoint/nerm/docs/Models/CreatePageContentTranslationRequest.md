---
id: nerm-create-page-content-translation-request
title: CreatePageContentTranslationRequest
pagination_label: CreatePageContentTranslationRequest
sidebar_label: CreatePageContentTranslationRequest
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'CreatePageContentTranslationRequest', 'NERMCreatePageContentTranslationRequest'] 
slug: /tools/sdk/powershell/nerm/models/create-page-content-translation-request
tags: ['SDK', 'Software Development Kit', 'CreatePageContentTranslationRequest', 'NERMCreatePageContentTranslationRequest']
---


# CreatePageContentTranslationRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**PageContentTranslation** | [**PageContentTranslation1**](page-content-translation1) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CreatePageContentTranslationRequest = Initialize-NERMCreatePageContentTranslationRequest  -PageContentTranslation null
```

- Convert the resource to JSON
```powershell
$CreatePageContentTranslationRequest | ConvertTo-JSON
```


[[Back to top]](#) 

