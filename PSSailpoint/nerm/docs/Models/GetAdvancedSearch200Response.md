---
id: nerm-get-advanced-search200-response
title: GetAdvancedSearch200Response
pagination_label: GetAdvancedSearch200Response
sidebar_label: GetAdvancedSearch200Response
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'GetAdvancedSearch200Response', 'NERMGetAdvancedSearch200Response'] 
slug: /tools/sdk/powershell/nerm/models/get-advanced-search200-response
tags: ['SDK', 'Software Development Kit', 'GetAdvancedSearch200Response', 'NERMGetAdvancedSearch200Response']
---


# GetAdvancedSearch200Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AdvancedSearch** | [**[]AdvancedSearch**](advanced-search) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$GetAdvancedSearch200Response = Initialize-NERMGetAdvancedSearch200Response  -AdvancedSearch null
```

- Convert the resource to JSON
```powershell
$GetAdvancedSearch200Response | ConvertTo-JSON
```


[[Back to top]](#) 

