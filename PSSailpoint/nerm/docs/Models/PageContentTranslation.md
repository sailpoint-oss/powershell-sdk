---
id: nerm-page-content-translation
title: PageContentTranslation
pagination_label: PageContentTranslation
sidebar_label: PageContentTranslation
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'PageContentTranslation', 'NERMPageContentTranslation'] 
slug: /tools/sdk/powershell/nerm/models/page-content-translation
tags: ['SDK', 'Software Development Kit', 'PageContentTranslation', 'NERMPageContentTranslation']
---


# PageContentTranslation

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | The id of the page content | [optional] [readonly] 
**Uid** | **String** | The user-specified identifier for the record | [optional] 
**Locale** | **String** | The language locale this translation contains. | [optional] 
**Value** | **String** | The translated string to present in the user interface. | [optional] 
**CreatedAt** | **System.DateTime** | The date-time the record created. | [optional] [readonly] 
**UpdatedAt** | **System.DateTime** | The date-time the record was last updated. | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$PageContentTranslation = Initialize-NERMPageContentTranslation  -Id ac4aae0b-4140-49a4-a84c-126762fd0c8f `
 -Uid page_content_transation_great_es_es `
 -Locale es-ES `
 -Value Es stupendo! `
 -CreatedAt null `
 -UpdatedAt null
```

- Convert the resource to JSON
```powershell
$PageContentTranslation | ConvertTo-JSON
```


[[Back to top]](#) 

