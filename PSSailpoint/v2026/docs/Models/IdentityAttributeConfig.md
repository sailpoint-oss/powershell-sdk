---
id: v2026-identity-attribute-config
title: IdentityAttributeConfig
pagination_label: IdentityAttributeConfig
sidebar_label: IdentityAttributeConfig
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'IdentityAttributeConfig', 'V2026IdentityAttributeConfig'] 
slug: /tools/sdk/powershell/v2026/models/identity-attribute-config
tags: ['SDK', 'Software Development Kit', 'IdentityAttributeConfig', 'V2026IdentityAttributeConfig']
---


# IdentityAttributeConfig

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Enabled** | **Boolean** | Backend will only promote values if the profile/mapping is enabled. | [optional] [default to $false]
**AttributeTransforms** | [**[]IdentityAttributeTransform**](identity-attribute-transform) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$IdentityAttributeConfig = Initialize-V2026IdentityAttributeConfig  -Enabled true `
 -AttributeTransforms null
```

- Convert the resource to JSON
```powershell
$IdentityAttributeConfig | ConvertTo-JSON
```


[[Back to top]](#) 

