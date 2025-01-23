---
id: identity-attribute-config
title: IdentityAttributeConfig
pagination_label: IdentityAttributeConfig
sidebar_label: IdentityAttributeConfig
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'IdentityAttributeConfig'] 
slug: /tools/sdk/powershell/beta/models/identity-attribute-config
tags: ['SDK', 'Software Development Kit', 'IdentityAttributeConfig']
---


# IdentityAttributeConfig

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Enabled** |  Pointer to **Boolean** | If the profile or mapping is enabled | [optional] [default to $true]
**AttributeTransforms** |  Pointer to [**[]IdentityAttributeTransform**](identity-attribute-transform) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$IdentityAttributeConfig = Initialize-PSSailpoint.BetaIdentityAttributeConfig  -Enabled true `
 -AttributeTransforms null
```

- Convert the resource to JSON
```powershell
$IdentityAttributeConfig | ConvertTo-JSON
```


[[Back to top]](#) 

