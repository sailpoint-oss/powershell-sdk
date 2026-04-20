---
id: nerm-profile-type-profile-type-namings-inner
title: ProfileTypeProfileTypeNamingsInner
pagination_label: ProfileTypeProfileTypeNamingsInner
sidebar_label: ProfileTypeProfileTypeNamingsInner
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'ProfileTypeProfileTypeNamingsInner', 'NERMProfileTypeProfileTypeNamingsInner'] 
slug: /tools/sdk/powershell/nerm/models/profile-type-profile-type-namings-inner
tags: ['SDK', 'Software Development Kit', 'ProfileTypeProfileTypeNamingsInner', 'NERMProfileTypeProfileTypeNamingsInner']
---


# ProfileTypeProfileTypeNamingsInner

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | The ID of the profile type naming. | [optional] 
**Uid** | **String** | The user-specified identifier of the profile type naming. | [optional] 
**ProfileTypeId** | **String** | The ID of the associated profile type. | [optional] 
**NeAttributeId** | **String** | The ID of the associated ne attribute. | [optional] 
**Order** | **Int32** | The order that the namings are used in. | [optional] 

## Examples

- Prepare the resource
```powershell
$ProfileTypeProfileTypeNamingsInner = Initialize-NERMProfileTypeProfileTypeNamingsInner  -Id 33f072dd-13b4-41e1-8ea0-16f2a59b57c8 `
 -Uid profile-type-name `
 -ProfileTypeId 33f072dd-13b4-41e1-8ea0-16f2a59b57c8 `
 -NeAttributeId 33f072dd-13b4-41e1-8ea0-16f2a59b57c8 `
 -Order 0
```

- Convert the resource to JSON
```powershell
$ProfileTypeProfileTypeNamingsInner | ConvertTo-JSON
```


[[Back to top]](#) 

