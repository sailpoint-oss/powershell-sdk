---
id: v2026-saved-search-complete-search-results-account
title: SavedSearchCompleteSearchResultsAccount
pagination_label: SavedSearchCompleteSearchResultsAccount
sidebar_label: SavedSearchCompleteSearchResultsAccount
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'SavedSearchCompleteSearchResultsAccount', 'V2026SavedSearchCompleteSearchResultsAccount'] 
slug: /tools/sdk/powershell/v2026/models/saved-search-complete-search-results-account
tags: ['SDK', 'Software Development Kit', 'SavedSearchCompleteSearchResultsAccount', 'V2026SavedSearchCompleteSearchResultsAccount']
---


# SavedSearchCompleteSearchResultsAccount

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Count** | **String** | The number of rows in the table. | [required]
**Noun** | **String** | The type of object represented in the table. | [required]
**Preview** | **[]String[]** | A sample of the data in the table. | [required]

## Examples

- Prepare the resource
```powershell
$SavedSearchCompleteSearchResultsAccount = Initialize-V2026SavedSearchCompleteSearchResultsAccount  -Count 3 `
 -Noun accounts `
 -Preview null
```

- Convert the resource to JSON
```powershell
$SavedSearchCompleteSearchResultsAccount | ConvertTo-JSON
```


[[Back to top]](#) 

