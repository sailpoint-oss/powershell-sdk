---
id: public-identities-search-request
title: PublicIdentitiesSearchRequest
pagination_label: PublicIdentitiesSearchRequest
sidebar_label: PublicIdentitiesSearchRequest
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'PublicIdentitiesSearchRequest', 'PublicIdentitiesSearchRequest'] 
slug: /tools/sdk/powershell/publicidentities/models/public-identities-search-request
tags: ['SDK', 'Software Development Kit', 'PublicIdentitiesSearchRequest', 'PublicIdentitiesSearchRequest']
---


# PublicIdentitiesSearchRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**QueryType** |  **Enum** [  "COMPOSITE" ] | Search query type. Must be COMPOSITE. | [required]
**Indices** | **[]String** | Search indices. Must be exactly [""identities""]. | [required]
**IncludeNested** | **Boolean** | Must be false for public identities search. | [required]
**Sort** | **[]String** | Optional attribute keys to sort by. Base keys must match those returned by GET /public-identities/v2/visible-attributes (defaultAttributes + configuredAttributes). Optional ""attributes."" prefix and/or "".exact"" suffix. | [optional] 
**QuerySet** | [**PublicIdentitiesSearchRequestQuerySet**](public-identities-search-request-query-set) |  | [required]

## Examples

- Prepare the resource
```powershell
$PublicIdentitiesSearchRequest = Initialize-PublicIdentitiesSearchRequest  -QueryType COMPOSITE `
 -Indices ["identities"] `
 -IncludeNested false `
 -Sort ["name"] `
 -QuerySet null
```

- Convert the resource to JSON
```powershell
$PublicIdentitiesSearchRequest | ConvertTo-JSON
```


[[Back to top]](#) 

