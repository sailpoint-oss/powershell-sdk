---
id: nerm-profile-type1-profile-type-namings-attributes-inner
title: ProfileType1ProfileTypeNamingsAttributesInner
pagination_label: ProfileType1ProfileTypeNamingsAttributesInner
sidebar_label: ProfileType1ProfileTypeNamingsAttributesInner
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'ProfileType1ProfileTypeNamingsAttributesInner', 'NERMProfileType1ProfileTypeNamingsAttributesInner'] 
slug: /tools/sdk/powershell/nerm/models/profile-type1-profile-type-namings-attributes-inner
tags: ['SDK', 'Software Development Kit', 'ProfileType1ProfileTypeNamingsAttributesInner', 'NERMProfileType1ProfileTypeNamingsAttributesInner']
---


# ProfileType1ProfileTypeNamingsAttributesInner

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**NeAttributeId** | **String** | The ID of the associated ne attribute. | [optional] 
**Order** | **Int32** | The order that the namings are used in. | [optional] 

## Examples

- Prepare the resource
```powershell
$ProfileType1ProfileTypeNamingsAttributesInner = Initialize-NERMProfileType1ProfileTypeNamingsAttributesInner  -NeAttributeId 33f072dd-13b4-41e1-8ea0-16f2a59b57c8 `
 -Order 0
```

- Convert the resource to JSON
```powershell
$ProfileType1ProfileTypeNamingsAttributesInner | ConvertTo-JSON
```


[[Back to top]](#) 

