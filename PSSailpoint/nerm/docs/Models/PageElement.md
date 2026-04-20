---
id: nerm-page-element
title: PageElement
pagination_label: PageElement
sidebar_label: PageElement
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'PageElement', 'NERMPageElement'] 
slug: /tools/sdk/powershell/nerm/models/page-element
tags: ['SDK', 'Software Development Kit', 'PageElement', 'NERMPageElement']
---


# PageElement

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | The id of the page element | [optional] [readonly] 
**Uid** | **String** | The user-specified identifier for the record | [optional] 
**ElementType** |  **Enum** [  "PageContent",    "Form" ] | The type of content on the page. | [required]
**PageUid** | **String** | The user-specified identifier of the page record this applies to; one of page_id or page_uid must be present. | [optional] 
**PageId** | **String** | The id of the page record this applies to; one of page_id or page_uid must be present. | [optional] 
**ElementUid** | **String** | The user-specified identifier of the record (Form or PageContent) this applies to; one of element_id or element_uid must be present. | [optional] 
**ElementId** | **String** | The id of the record (Form or PageContent) this applies to; one of element_id or element_uid must be present. | [optional] 
**Order** | **Int32** | The position of the attribute in the ProfileType's naming | [optional] 

## Examples

- Prepare the resource
```powershell
$PageElement = Initialize-NERMPageElement  -Id ac4aae0b-4140-49a4-a84c-126762fd0c8f `
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
$PageElement | ConvertTo-JSON
```


[[Back to top]](#) 

