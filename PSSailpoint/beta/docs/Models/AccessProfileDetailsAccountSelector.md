---
id: beta-access-profile-details-account-selector
title: AccessProfileDetailsAccountSelector
pagination_label: AccessProfileDetailsAccountSelector
sidebar_label: AccessProfileDetailsAccountSelector
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'AccessProfileDetailsAccountSelector', 'BetaAccessProfileDetailsAccountSelector'] 
slug: /tools/sdk/powershell/beta/models/access-profile-details-account-selector
tags: ['SDK', 'Software Development Kit', 'AccessProfileDetailsAccountSelector', 'BetaAccessProfileDetailsAccountSelector']
---


# AccessProfileDetailsAccountSelector

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Selectors** | [**[]Selector**](selector) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$AccessProfileDetailsAccountSelector = Initialize-PSSailpoint.BetaAccessProfileDetailsAccountSelector  -Selectors null
$AccessProfileDetailsAccountSelector = @"{  "Selectors": "null "}"@
```

- Convert the resource from JSON
```powershell
ConvertFrom-JsonToAccessProfileDetailsAccountSelector -Json $AccessProfileDetailsAccountSelector
```


[[Back to top]](#) 

