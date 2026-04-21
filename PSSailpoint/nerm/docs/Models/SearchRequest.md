---
id: nerm-search-request
title: SearchRequest
pagination_label: SearchRequest
sidebar_label: SearchRequest
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'SearchRequest', 'NERMSearchRequest'] 
slug: /tools/sdk/powershell/nerm/models/search-request
tags: ['SDK', 'Software Development Kit', 'SearchRequest', 'NERMSearchRequest']
---


# SearchRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AuditEvents** | [**SearchRequestAuditEvents**](search-request-audit-events) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$SearchRequest = Initialize-NERMSearchRequest  -AuditEvents null
```

- Convert the resource to JSON
```powershell
$SearchRequest | ConvertTo-JSON
```


[[Back to top]](#) 

