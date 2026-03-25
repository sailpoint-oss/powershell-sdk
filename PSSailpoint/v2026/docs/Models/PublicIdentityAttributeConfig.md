---
id: v2026-public-identity-attribute-config
title: PublicIdentityAttributeConfig
pagination_label: PublicIdentityAttributeConfig
sidebar_label: PublicIdentityAttributeConfig
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'PublicIdentityAttributeConfig', 'V2026PublicIdentityAttributeConfig'] 
slug: /tools/sdk/powershell/v2026/models/public-identity-attribute-config
tags: ['SDK', 'Software Development Kit', 'PublicIdentityAttributeConfig', 'V2026PublicIdentityAttributeConfig']
---


# PublicIdentityAttributeConfig

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Key** | **String** | The attribute key | [optional] 
**Name** | **String** | The attribute display name | [optional] 

## Examples

- Prepare the resource
```powershell
$PublicIdentityAttributeConfig = Initialize-V2026PublicIdentityAttributeConfig  -Key country `
 -Name Country
```

- Convert the resource to JSON
```powershell
$PublicIdentityAttributeConfig | ConvertTo-JSON
```


[[Back to top]](#) 

