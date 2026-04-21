---
id: nerm-page-element1
title: PageElement1
pagination_label: PageElement1
sidebar_label: PageElement1
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'PageElement1', 'NERMPageElement1'] 
slug: /tools/sdk/powershell/nerm/models/page-element1
tags: ['SDK', 'Software Development Kit', 'PageElement1', 'NERMPageElement1']
---


# PageElement1

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | The id of the page content | [optional] [readonly] 
**Uid** | **String** | The user-specified identifier for the record | [optional] 
**ElementType** |  **Enum** [  "PageContent",    "Form" ] | The type of content on the page. | [required]
**PageUid** | **String** | The user-specified identifier of the page record this applies to; one of page_id or page_uid must be present. | [optional] 
**PageId** | **String** | The id of the page record this applies to; one of page_id or page_uid must be present. | [optional] 
**ElementUid** | **String** | The user-specified identifier of the record (Form or PageContent) this applies to; one of element_id or element_uid must be present. | [optional] 
**ElementId** | **String** | The id of the record (Form or PageContent) this applies to; one of element_id or element_uid must be present. | [optional] 
**Order** | **Int32** | The ordinal position of the attribute in the user-interface page. | [optional] 

## Examples

- Prepare the resource
```powershell
$PageElement1 = Initialize-NERMPageElement1  -Id ac4aae0b-4140-49a4-a84c-126762fd0c8f `
 -Uid first_text_body `
 -ElementType PageContent `
 -PageUid null `
 -PageId ef5d413f-ba18-49e6-9a72-bb115aa133ff `
 -ElementUid null `
 -ElementId ef5d413f-ba18-49e6-9a72-bb115aa133ff `
 -Order 1
```

- Convert the resource to JSON
```powershell
$PageElement1 | ConvertTo-JSON
```


[[Back to top]](#) 

