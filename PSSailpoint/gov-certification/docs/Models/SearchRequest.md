---
id: search-request
title: SearchRequest
pagination_label: SearchRequest
sidebar_label: SearchRequest
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'SearchRequest', 'SearchRequest'] 
slug: /tools/sdk/powershell/govcertification/models/search-request
tags: ['SDK', 'Software Development Kit', 'SearchRequest', 'SearchRequest']
---


# SearchRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**QueryString** | **String** | Query String | [optional] 

## Examples

- Prepare the resource
```powershell
$SearchRequest = Initialize-SearchRequest  -QueryString identity 2023
```

- Convert the resource to JSON
```powershell
$SearchRequest | ConvertTo-JSON
```


[[Back to top]](#) 

