---
id: nerm-profile-type-attribute
title: ProfileTypeAttribute
pagination_label: ProfileTypeAttribute
sidebar_label: ProfileTypeAttribute
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'ProfileTypeAttribute', 'NERMProfileTypeAttribute'] 
slug: /tools/sdk/powershell/nerm/models/profile-type-attribute
tags: ['SDK', 'Software Development Kit', 'ProfileTypeAttribute', 'NERMProfileTypeAttribute']
---


# ProfileTypeAttribute

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | ID of ne attribute | [optional] [readonly] 
**Uid** | **String** | Ne attribute's uid | [optional] [readonly] 
**Label** | **String** | Ne attribute's label | [required][readonly] 
**Synced** | **String** | synced_attribute ID if there is one | [optional] 

## Examples

- Prepare the resource
```powershell
$ProfileTypeAttribute = Initialize-NERMProfileTypeAttribute  -Id 1246d8b3-ac29-4015-8154-dea4434a73fa `
 -Uid 1246d8b3-ac29-4015-8154-dea4434a73fa `
 -Label object `
 -Synced 1246d8b3-ac29-4015-8154-dea4434a73fa
```

- Convert the resource to JSON
```powershell
$ProfileTypeAttribute | ConvertTo-JSON
```


[[Back to top]](#) 

