---
id: v2026-saved-search-name
title: SavedSearchName
pagination_label: SavedSearchName
sidebar_label: SavedSearchName
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'SavedSearchName', 'V2026SavedSearchName'] 
slug: /tools/sdk/powershell/v2026/models/saved-search-name
tags: ['SDK', 'Software Development Kit', 'SavedSearchName', 'V2026SavedSearchName']
---


# SavedSearchName

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** | The name of the saved search.  | [optional] 
**Description** | **String** | The description of the saved search.  | [optional] 

## Examples

- Prepare the resource
```powershell
$SavedSearchName = Initialize-V2026SavedSearchName  -Name Disabled accounts `
 -Description Disabled accounts
```

- Convert the resource to JSON
```powershell
$SavedSearchName | ConvertTo-JSON
```


[[Back to top]](#) 

