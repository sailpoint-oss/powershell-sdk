---
id: saved-search-complete-search-results
title: SavedSearchCompleteSearchResults
pagination_label: SavedSearchCompleteSearchResults
sidebar_label: SavedSearchCompleteSearchResults
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'SavedSearchCompleteSearchResults', 'SavedSearchCompleteSearchResults'] 
slug: /tools/sdk/powershell/triggers/models/saved-search-complete-search-results
tags: ['SDK', 'Software Development Kit', 'SavedSearchCompleteSearchResults', 'SavedSearchCompleteSearchResults']
---


# SavedSearchCompleteSearchResults

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Account** | [**SavedSearchCompleteSearchResultsAccount**](saved-search-complete-search-results-account) |  | [optional] 
**Entitlement** | [**SavedSearchCompleteSearchResultsEntitlement**](saved-search-complete-search-results-entitlement) |  | [optional] 
**Identity** | [**SavedSearchCompleteSearchResultsIdentity**](saved-search-complete-search-results-identity) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$SavedSearchCompleteSearchResults = Initialize-SavedSearchCompleteSearchResults  -Account null `
 -Entitlement null `
 -Identity null
```

- Convert the resource to JSON
```powershell
$SavedSearchCompleteSearchResults | ConvertTo-JSON
```


[[Back to top]](#) 

