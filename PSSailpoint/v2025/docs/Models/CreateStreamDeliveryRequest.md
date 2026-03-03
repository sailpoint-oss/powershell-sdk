---
id: v2025-create-stream-delivery-request
title: CreateStreamDeliveryRequest
pagination_label: CreateStreamDeliveryRequest
sidebar_label: CreateStreamDeliveryRequest
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'CreateStreamDeliveryRequest', 'V2025CreateStreamDeliveryRequest'] 
slug: /tools/sdk/powershell/v2025/models/create-stream-delivery-request
tags: ['SDK', 'Software Development Kit', 'CreateStreamDeliveryRequest', 'V2025CreateStreamDeliveryRequest']
---


# CreateStreamDeliveryRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Method** | **String** | Delivery method (only push is supported). | [required]
**EndpointUrl** | **String** | Receiver endpoint URL for push delivery. | [required]
**AuthorizationHeader** | **String** | Authorization header value for delivery requests. | [optional] 

## Examples

- Prepare the resource
```powershell
$CreateStreamDeliveryRequest = Initialize-V2025CreateStreamDeliveryRequest  -Method urn:ietf:rfc:8935 `
 -EndpointUrl https://receiver.example.com/ssf/events `
 -AuthorizationHeader Bearer eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9...
```

- Convert the resource to JSON
```powershell
$CreateStreamDeliveryRequest | ConvertTo-JSON
```


[[Back to top]](#) 

