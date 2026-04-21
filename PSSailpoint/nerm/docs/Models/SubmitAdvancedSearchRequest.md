---
id: nerm-submit-advanced-search-request
title: SubmitAdvancedSearchRequest
pagination_label: SubmitAdvancedSearchRequest
sidebar_label: SubmitAdvancedSearchRequest
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'SubmitAdvancedSearchRequest', 'NERMSubmitAdvancedSearchRequest'] 
slug: /tools/sdk/powershell/nerm/models/submit-advanced-search-request
tags: ['SDK', 'Software Development Kit', 'SubmitAdvancedSearchRequest', 'NERMSubmitAdvancedSearchRequest']
---


# SubmitAdvancedSearchRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AdvancedSearch** | [**AdvancedSearch1**](advanced-search1) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$SubmitAdvancedSearchRequest = Initialize-NERMSubmitAdvancedSearchRequest  -AdvancedSearch null
```

- Convert the resource to JSON
```powershell
$SubmitAdvancedSearchRequest | ConvertTo-JSON
```


[[Back to top]](#) 

