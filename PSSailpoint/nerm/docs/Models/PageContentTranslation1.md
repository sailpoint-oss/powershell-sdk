---
id: nerm-page-content-translation1
title: PageContentTranslation1
pagination_label: PageContentTranslation1
sidebar_label: PageContentTranslation1
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'PageContentTranslation1', 'NERMPageContentTranslation1'] 
slug: /tools/sdk/powershell/nerm/models/page-content-translation1
tags: ['SDK', 'Software Development Kit', 'PageContentTranslation1', 'NERMPageContentTranslation1']
---


# PageContentTranslation1

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Uid** | **String** | The user-specified identifier for the record | [optional] 
**PageContentUid** | **String** | The user-specified identifier of the page content record this translation applies to; one of page_content_id or page_content_uid must be present. | [optional] 
**PageContentId** | **String** | The id of the page content record this translation applies to; one of page_content_id or page_content_uid must be present. | [optional] 
**Locale** | **String** | The language locale this translation contains. | [optional] 
**Value** | **String** | The translated string to present in the user interface. | [optional] 

## Examples

- Prepare the resource
```powershell
$PageContentTranslation1 = Initialize-NERMPageContentTranslation1  -Uid page_content_translation_spanish_great `
 -PageContentUid null `
 -PageContentId ef5d413f-ba18-49e6-9a72-bb115aa133ff `
 -Locale es-ES `
 -Value Es stupendo!
```

- Convert the resource to JSON
```powershell
$PageContentTranslation1 | ConvertTo-JSON
```


[[Back to top]](#) 

