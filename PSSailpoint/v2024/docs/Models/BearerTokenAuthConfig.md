---
id: v2024-bearer-token-auth-config
title: BearerTokenAuthConfig
pagination_label: BearerTokenAuthConfig
sidebar_label: BearerTokenAuthConfig
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'BearerTokenAuthConfig', 'V2024BearerTokenAuthConfig'] 
slug: /tools/sdk/powershell/v2024/models/bearer-token-auth-config
tags: ['SDK', 'Software Development Kit', 'BearerTokenAuthConfig', 'V2024BearerTokenAuthConfig']
---


# BearerTokenAuthConfig

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**BearerToken** | **String** | Bearer token | [optional] 

## Examples

- Prepare the resource
```powershell
$BearerTokenAuthConfig = Initialize-PSSailpoint.V2024BearerTokenAuthConfig  -BearerToken null
$BearerTokenAuthConfig = @"{  "BearerToken": "null" }"@
```

- Convert the resource from JSON
```powershell
ConvertFrom-JsonToBearerTokenAuthConfig -Json $BearerTokenAuthConfig
```


[[Back to top]](#) 

