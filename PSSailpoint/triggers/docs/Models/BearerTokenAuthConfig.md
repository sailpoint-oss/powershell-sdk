---
id: bearer-token-auth-config
title: BearerTokenAuthConfig
pagination_label: BearerTokenAuthConfig
sidebar_label: BearerTokenAuthConfig
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'BearerTokenAuthConfig', 'BearerTokenAuthConfig'] 
slug: /tools/sdk/powershell/triggers/models/bearer-token-auth-config
tags: ['SDK', 'Software Development Kit', 'BearerTokenAuthConfig', 'BearerTokenAuthConfig']
---


# BearerTokenAuthConfig

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**BearerToken** | **String** | Bearer token | [optional] 

## Examples

- Prepare the resource
```powershell
$BearerTokenAuthConfig = Initialize-BearerTokenAuthConfig  -BearerToken null
```

- Convert the resource to JSON
```powershell
$BearerTokenAuthConfig | ConvertTo-JSON
```


[[Back to top]](#) 

