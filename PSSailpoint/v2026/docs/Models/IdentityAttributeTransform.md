---
id: v2026-identity-attribute-transform
title: IdentityAttributeTransform
pagination_label: IdentityAttributeTransform
sidebar_label: IdentityAttributeTransform
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'IdentityAttributeTransform', 'V2026IdentityAttributeTransform'] 
slug: /tools/sdk/powershell/v2026/models/identity-attribute-transform
tags: ['SDK', 'Software Development Kit', 'IdentityAttributeTransform', 'V2026IdentityAttributeTransform']
---


# IdentityAttributeTransform

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**IdentityAttributeName** | **String** | Identity attribute's name. | [optional] 
**TransformDefinition** | [**TransformDefinition**](transform-definition) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$IdentityAttributeTransform = Initialize-V2026IdentityAttributeTransform  -IdentityAttributeName email `
 -TransformDefinition null
```

- Convert the resource to JSON
```powershell
$IdentityAttributeTransform | ConvertTo-JSON
```


[[Back to top]](#) 

