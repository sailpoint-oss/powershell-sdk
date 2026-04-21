---
id: nerm-page-content
title: PageContent
pagination_label: PageContent
sidebar_label: PageContent
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'PageContent', 'NERMPageContent'] 
slug: /tools/sdk/powershell/nerm/models/page-content
tags: ['SDK', 'Software Development Kit', 'PageContent', 'NERMPageContent']
---


# PageContent

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | The id of the page content | [optional] [readonly] 
**Uid** | **String** | The user-specified identifier for the record | [optional] 
**Type** |  **Enum** [  "FormHeading",    "LargeHeading",    "MediumHeading",    "SmallHeading",    "Paragraph",    "HtmlContainer",    "Owner",    "RequestProgressBar" ] | The type of content on the page. | [required]
**Content** | **String** | The text content to present in this page content record. | [optional] 
**CreatedAt** | **System.DateTime** | The date-time the record created. | [optional] [readonly] 
**UpdatedAt** | **System.DateTime** | The date-time the record was last updated. | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$PageContent = Initialize-NERMPageContent  -Id ac4aae0b-4140-49a4-a84c-126762fd0c8f `
 -Uid first_text_body `
 -Type MediumHeading `
 -Content Lorem Ipsum yadda yaddda bing bang. `
 -CreatedAt null `
 -UpdatedAt null
```

- Convert the resource to JSON
```powershell
$PageContent | ConvertTo-JSON
```


[[Back to top]](#) 

