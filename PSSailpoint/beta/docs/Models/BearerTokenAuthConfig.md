---
id: beta-bearer-token-auth-config
title: BearerTokenAuthConfig
pagination_label: BearerTokenAuthConfig
sidebar_label: BearerTokenAuthConfig
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'BearerTokenAuthConfig', 'BetaBearerTokenAuthConfig'] 
slug: /tools/sdk/powershell/beta/models/bearer-token-auth-config
tags: ['SDK', 'Software Development Kit', 'BearerTokenAuthConfig', 'BetaBearerTokenAuthConfig']
---


# BearerTokenAuthConfig

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**BearerToken** | **String** | Bearer token | [optional] 

## Examples

- Prepare the resource
```powershell
$BearerTokenAuthConfig = Initialize-PSSailpoint.BetaBearerTokenAuthConfig  -BearerToken null
$BearerTokenAuthConfig = @"{  "BearerToken": "null" }"@
```

- Convert the resource from JSON
```powershell
ConvertFrom-JsonToBearerTokenAuthConfig -Json $BearerTokenAuthConfig
```


[[Back to top]](#) 

