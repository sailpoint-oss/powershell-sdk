---
id: nerm-get-page-content-translation200-response
title: GetPageContentTranslation200Response
pagination_label: GetPageContentTranslation200Response
sidebar_label: GetPageContentTranslation200Response
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'GetPageContentTranslation200Response', 'NERMGetPageContentTranslation200Response'] 
slug: /tools/sdk/powershell/nerm/models/get-page-content-translation200-response
tags: ['SDK', 'Software Development Kit', 'GetPageContentTranslation200Response', 'NERMGetPageContentTranslation200Response']
---


# GetPageContentTranslation200Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**PageContentTranslation** | [**PageContentTranslation**](page-content-translation) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$GetPageContentTranslation200Response = Initialize-NERMGetPageContentTranslation200Response  -PageContentTranslation null
```

- Convert the resource to JSON
```powershell
$GetPageContentTranslation200Response | ConvertTo-JSON
```


[[Back to top]](#) 

