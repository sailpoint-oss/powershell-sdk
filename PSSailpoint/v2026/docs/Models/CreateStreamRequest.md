---
id: v2026-create-stream-request
title: CreateStreamRequest
pagination_label: CreateStreamRequest
sidebar_label: CreateStreamRequest
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'CreateStreamRequest', 'V2026CreateStreamRequest'] 
slug: /tools/sdk/powershell/v2026/models/create-stream-request
tags: ['SDK', 'Software Development Kit', 'CreateStreamRequest', 'V2026CreateStreamRequest']
---


# CreateStreamRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Delivery** | [**CreateStreamDeliveryRequest**](create-stream-delivery-request) |  | [required]
**EventsRequested** | **[]String** | Optional list of event types the receiver wants. Use CAEP event-type URIs in the form: `https://schemas.openid.net/secevent/caep/event-type/{event-type}` (e.g. session revoke).  | [optional] 
**Description** | **String** | Optional human-readable description of the stream. | [optional] 

## Examples

- Prepare the resource
```powershell
$CreateStreamRequest = Initialize-V2026CreateStreamRequest  -Delivery null `
 -EventsRequested [https://schemas.openid.net/secevent/caep/event-type/session-revoked] `
 -Description Production event stream
```

- Convert the resource to JSON
```powershell
$CreateStreamRequest | ConvertTo-JSON
```


[[Back to top]](#) 

