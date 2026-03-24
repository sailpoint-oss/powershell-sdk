---
id: v2025-start-application-discovery403-response
title: StartApplicationDiscovery403Response
pagination_label: StartApplicationDiscovery403Response
sidebar_label: StartApplicationDiscovery403Response
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'StartApplicationDiscovery403Response', 'V2025StartApplicationDiscovery403Response'] 
slug: /tools/sdk/powershell/v2025/models/start-application-discovery403-response
tags: ['SDK', 'Software Development Kit', 'StartApplicationDiscovery403Response', 'V2025StartApplicationDiscovery403Response']
---


# StartApplicationDiscovery403Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**DetailCode** | **String** | Fine-grained error code providing more detail of the error. | [optional] 
**TrackingId** | **String** | Unique tracking id for the error. | [optional] 
**Messages** | [**[]ErrorMessageDto**](error-message-dto) | Generic localized reason for error | [optional] 
**Causes** | [**[]ErrorMessageDto**](error-message-dto) | Plain-text descriptive reasons to provide additional detail to the text provided in the messages field | [optional] 
**VarError** | **String** | Error message when quota is exceeded | [required]

## Examples

- Prepare the resource
```powershell
$StartApplicationDiscovery403Response = Initialize-V2025StartApplicationDiscovery403Response  -DetailCode 400.1 Bad Request Content `
 -TrackingId e7eab60924f64aa284175b9fa3309599 `
 -Messages null `
 -Causes null `
 -VarError null
```

- Convert the resource to JSON
```powershell
$StartApplicationDiscovery403Response | ConvertTo-JSON
```


[[Back to top]](#) 

