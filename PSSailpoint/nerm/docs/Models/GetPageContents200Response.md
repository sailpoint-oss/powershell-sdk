---
id: nerm-get-page-contents200-response
title: GetPageContents200Response
pagination_label: GetPageContents200Response
sidebar_label: GetPageContents200Response
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'GetPageContents200Response', 'NERMGetPageContents200Response'] 
slug: /tools/sdk/powershell/nerm/models/get-page-contents200-response
tags: ['SDK', 'Software Development Kit', 'GetPageContents200Response', 'NERMGetPageContents200Response']
---


# GetPageContents200Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Page** | [**PageContent**](page-content) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$GetPageContents200Response = Initialize-NERMGetPageContents200Response  -Page null
```

- Convert the resource to JSON
```powershell
$GetPageContents200Response | ConvertTo-JSON
```


[[Back to top]](#) 

