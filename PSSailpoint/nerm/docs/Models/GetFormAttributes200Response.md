---
id: nerm-get-form-attributes200-response
title: GetFormAttributes200Response
pagination_label: GetFormAttributes200Response
sidebar_label: GetFormAttributes200Response
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'GetFormAttributes200Response', 'NERMGetFormAttributes200Response'] 
slug: /tools/sdk/powershell/nerm/models/get-form-attributes200-response
tags: ['SDK', 'Software Development Kit', 'GetFormAttributes200Response', 'NERMGetFormAttributes200Response']
---


# GetFormAttributes200Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**FormAttribute** | [**FormAttribute**](form-attribute) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$GetFormAttributes200Response = Initialize-NERMGetFormAttributes200Response  -FormAttribute null
```

- Convert the resource to JSON
```powershell
$GetFormAttributes200Response | ConvertTo-JSON
```


[[Back to top]](#) 

