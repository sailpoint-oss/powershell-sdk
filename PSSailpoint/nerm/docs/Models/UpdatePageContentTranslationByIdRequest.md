---
id: nerm-update-page-content-translation-by-id-request
title: UpdatePageContentTranslationByIdRequest
pagination_label: UpdatePageContentTranslationByIdRequest
sidebar_label: UpdatePageContentTranslationByIdRequest
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'UpdatePageContentTranslationByIdRequest', 'NERMUpdatePageContentTranslationByIdRequest'] 
slug: /tools/sdk/powershell/nerm/models/update-page-content-translation-by-id-request
tags: ['SDK', 'Software Development Kit', 'UpdatePageContentTranslationByIdRequest', 'NERMUpdatePageContentTranslationByIdRequest']
---


# UpdatePageContentTranslationByIdRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**PageContentTranslation** | [**PageContent1**](page-content1) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$UpdatePageContentTranslationByIdRequest = Initialize-NERMUpdatePageContentTranslationByIdRequest  -PageContentTranslation null
```

- Convert the resource to JSON
```powershell
$UpdatePageContentTranslationByIdRequest | ConvertTo-JSON
```


[[Back to top]](#) 

