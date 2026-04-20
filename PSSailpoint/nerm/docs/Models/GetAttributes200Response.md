---
id: nerm-get-attributes200-response
title: GetAttributes200Response
pagination_label: GetAttributes200Response
sidebar_label: GetAttributes200Response
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'GetAttributes200Response', 'NERMGetAttributes200Response'] 
slug: /tools/sdk/powershell/nerm/models/get-attributes200-response
tags: ['SDK', 'Software Development Kit', 'GetAttributes200Response', 'NERMGetAttributes200Response']
---


# GetAttributes200Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**NeAttributes** | [**[]Attribute**](attribute) |  | [optional] 
**Metadata** | [**Metadata**](metadata) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$GetAttributes200Response = Initialize-NERMGetAttributes200Response  -NeAttributes null `
 -Metadata null
```

- Convert the resource to JSON
```powershell
$GetAttributes200Response | ConvertTo-JSON
```


[[Back to top]](#) 

