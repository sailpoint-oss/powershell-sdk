---
id: nerm-get-page-elements200-response
title: GetPageElements200Response
pagination_label: GetPageElements200Response
sidebar_label: GetPageElements200Response
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'GetPageElements200Response', 'NERMGetPageElements200Response'] 
slug: /tools/sdk/powershell/nerm/models/get-page-elements200-response
tags: ['SDK', 'Software Development Kit', 'GetPageElements200Response', 'NERMGetPageElements200Response']
---


# GetPageElements200Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**PageElement** | [**PageElement**](page-element) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$GetPageElements200Response = Initialize-NERMGetPageElements200Response  -PageElement null
```

- Convert the resource to JSON
```powershell
$GetPageElements200Response | ConvertTo-JSON
```


[[Back to top]](#) 

