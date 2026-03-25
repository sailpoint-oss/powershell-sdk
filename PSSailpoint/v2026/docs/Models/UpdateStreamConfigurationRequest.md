---
id: v2026-update-stream-configuration-request
title: UpdateStreamConfigurationRequest
pagination_label: UpdateStreamConfigurationRequest
sidebar_label: UpdateStreamConfigurationRequest
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'UpdateStreamConfigurationRequest', 'V2026UpdateStreamConfigurationRequest'] 
slug: /tools/sdk/powershell/v2026/models/update-stream-configuration-request
tags: ['SDK', 'Software Development Kit', 'UpdateStreamConfigurationRequest', 'V2026UpdateStreamConfigurationRequest']
---


# UpdateStreamConfigurationRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**StreamId** | **String** | ID of the stream to update. | [required]
**Delivery** | [**DeliveryRequest**](delivery-request) |  | [optional] 
**EventsRequested** | **[]String** | Event types the receiver wants. Use CAEP event-type URIs. | [optional] 
**Description** | **String** | Optional human-readable description of the stream. | [optional] 

## Examples

- Prepare the resource
```powershell
$UpdateStreamConfigurationRequest = Initialize-V2026UpdateStreamConfigurationRequest  -StreamId 550e8400-e29b-41d4-a716-446655440000 `
 -Delivery null `
 -EventsRequested [https://schemas.openid.net/secevent/caep/event-type/session-revoked] `
 -Description Updated production event stream configuration
```

- Convert the resource to JSON
```powershell
$UpdateStreamConfigurationRequest | ConvertTo-JSON
```


[[Back to top]](#) 

