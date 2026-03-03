---
id: v2025-replace-stream-configuration-request
title: ReplaceStreamConfigurationRequest
pagination_label: ReplaceStreamConfigurationRequest
sidebar_label: ReplaceStreamConfigurationRequest
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'ReplaceStreamConfigurationRequest', 'V2025ReplaceStreamConfigurationRequest'] 
slug: /tools/sdk/powershell/v2025/models/replace-stream-configuration-request
tags: ['SDK', 'Software Development Kit', 'ReplaceStreamConfigurationRequest', 'V2025ReplaceStreamConfigurationRequest']
---


# ReplaceStreamConfigurationRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**StreamId** | **String** | ID of the stream to replace. | [required]
**Delivery** | [**ReplaceStreamConfigurationRequestDelivery**](replace-stream-configuration-request-delivery) |  | [required]
**EventsRequested** | **[]String** | Event types the receiver wants. Use CAEP event-type URIs. | [optional] 
**Description** | **String** | Optional human-readable description of the stream. | [optional] 

## Examples

- Prepare the resource
```powershell
$ReplaceStreamConfigurationRequest = Initialize-V2025ReplaceStreamConfigurationRequest  -StreamId 550e8400-e29b-41d4-a716-446655440000 `
 -Delivery null `
 -EventsRequested [https://schemas.openid.net/secevent/caep/event-type/session-revoked] `
 -Description Production event stream
```

- Convert the resource to JSON
```powershell
$ReplaceStreamConfigurationRequest | ConvertTo-JSON
```


[[Back to top]](#) 

