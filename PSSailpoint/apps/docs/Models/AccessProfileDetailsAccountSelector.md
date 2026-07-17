---
id: access-profile-details-account-selector
title: AccessProfileDetailsAccountSelector
pagination_label: AccessProfileDetailsAccountSelector
sidebar_label: AccessProfileDetailsAccountSelector
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'AccessProfileDetailsAccountSelector', 'AccessProfileDetailsAccountSelector'] 
slug: /tools/sdk/powershell/apps/models/access-profile-details-account-selector
tags: ['SDK', 'Software Development Kit', 'AccessProfileDetailsAccountSelector', 'AccessProfileDetailsAccountSelector']
---


# AccessProfileDetailsAccountSelector

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Selectors** | [**[]AppAccessProfileSelector**](app-access-profile-selector) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$AccessProfileDetailsAccountSelector = Initialize-AccessProfileDetailsAccountSelector  -Selectors null
```

- Convert the resource to JSON
```powershell
$AccessProfileDetailsAccountSelector | ConvertTo-JSON
```


[[Back to top]](#) 

