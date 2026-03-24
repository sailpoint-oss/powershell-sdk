---
id: v2025-start-application-discovery403-response-one-of
title: StartApplicationDiscovery403ResponseOneOf
pagination_label: StartApplicationDiscovery403ResponseOneOf
sidebar_label: StartApplicationDiscovery403ResponseOneOf
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'StartApplicationDiscovery403ResponseOneOf', 'V2025StartApplicationDiscovery403ResponseOneOf'] 
slug: /tools/sdk/powershell/v2025/models/start-application-discovery403-response-one-of
tags: ['SDK', 'Software Development Kit', 'StartApplicationDiscovery403ResponseOneOf', 'V2025StartApplicationDiscovery403ResponseOneOf']
---


# StartApplicationDiscovery403ResponseOneOf

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarError** | **String** | Error message when quota is exceeded | [required]

## Examples

- Prepare the resource
```powershell
$StartApplicationDiscovery403ResponseOneOf = Initialize-V2025StartApplicationDiscovery403ResponseOneOf  -VarError null
```

- Convert the resource to JSON
```powershell
$StartApplicationDiscovery403ResponseOneOf | ConvertTo-JSON
```


[[Back to top]](#) 

