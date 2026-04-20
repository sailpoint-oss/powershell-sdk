---
id: nerm-profile-type-profile-type-dup-attributes-inner
title: ProfileTypeProfileTypeDupAttributesInner
pagination_label: ProfileTypeProfileTypeDupAttributesInner
sidebar_label: ProfileTypeProfileTypeDupAttributesInner
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'ProfileTypeProfileTypeDupAttributesInner', 'NERMProfileTypeProfileTypeDupAttributesInner'] 
slug: /tools/sdk/powershell/nerm/models/profile-type-profile-type-dup-attributes-inner
tags: ['SDK', 'Software Development Kit', 'ProfileTypeProfileTypeDupAttributesInner', 'NERMProfileTypeProfileTypeDupAttributesInner']
---


# ProfileTypeProfileTypeDupAttributesInner

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | The ID of the properties that are used for duplication protection. | [optional] 
**Uid** | **String** | The user-specified identifier of the properties that are used for duplication protection. | [optional] 
**ProfileTypeId** | **String** | The ID of the profile type. | [optional] 
**NeAttributeId** | **String** | The ID of the ne attribute. | [optional] 

## Examples

- Prepare the resource
```powershell
$ProfileTypeProfileTypeDupAttributesInner = Initialize-NERMProfileTypeProfileTypeDupAttributesInner  -Id 33f072dd-13b4-41e1-8ea0-16f2a59b57c8 `
 -Uid attribute-uid `
 -ProfileTypeId 33f072dd-13b4-41e1-8ea0-16f2a59b57c8 `
 -NeAttributeId 33f072dd-13b4-41e1-8ea0-16f2a59b57c8
```

- Convert the resource to JSON
```powershell
$ProfileTypeProfileTypeDupAttributesInner | ConvertTo-JSON
```


[[Back to top]](#) 

