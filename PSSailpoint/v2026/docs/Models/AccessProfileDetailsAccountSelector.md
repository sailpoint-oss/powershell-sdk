---
id: v2026-access-profile-details-account-selector
title: AccessProfileDetailsAccountSelector
pagination_label: AccessProfileDetailsAccountSelector
sidebar_label: AccessProfileDetailsAccountSelector
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'AccessProfileDetailsAccountSelector', 'V2026AccessProfileDetailsAccountSelector'] 
slug: /tools/sdk/powershell/v2026/models/access-profile-details-account-selector
tags: ['SDK', 'Software Development Kit', 'AccessProfileDetailsAccountSelector', 'V2026AccessProfileDetailsAccountSelector']
---


# AccessProfileDetailsAccountSelector

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Selectors** | [**[]Selector**](selector) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$AccessProfileDetailsAccountSelector = Initialize-V2026AccessProfileDetailsAccountSelector  -Selectors null
```

- Convert the resource to JSON
```powershell
$AccessProfileDetailsAccountSelector | ConvertTo-JSON
```


[[Back to top]](#) 

