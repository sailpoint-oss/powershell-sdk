---
id: nerm-page-content1
title: PageContent1
pagination_label: PageContent1
sidebar_label: PageContent1
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'PageContent1', 'NERMPageContent1'] 
slug: /tools/sdk/powershell/nerm/models/page-content1
tags: ['SDK', 'Software Development Kit', 'PageContent1', 'NERMPageContent1']
---


# PageContent1

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Uid** | **String** | The user-specified identifier for the record | [optional] 
**Type** |  **Enum** [  "FormHeading",    "LargeHeading",    "MediumHeading",    "SmallHeading",    "Paragraph",    "HtmlContainer",    "Owner",    "RequestProgressBar" ] | The type of content on the page. | [required]
**Content** | **String** | The text content to present in this page content record. | [optional] 

## Examples

- Prepare the resource
```powershell
$PageContent1 = Initialize-NERMPageContent1  -Uid first_text_body `
 -Type MediumHeading `
 -Content Lorem Ipsum yadda yaddda bing bang.
```

- Convert the resource to JSON
```powershell
$PageContent1 | ConvertTo-JSON
```


[[Back to top]](#) 

