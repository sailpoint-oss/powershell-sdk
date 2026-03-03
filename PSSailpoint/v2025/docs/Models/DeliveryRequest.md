---
id: v2025-delivery-request
title: DeliveryRequest
pagination_label: DeliveryRequest
sidebar_label: DeliveryRequest
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'DeliveryRequest', 'V2025DeliveryRequest'] 
slug: /tools/sdk/powershell/v2025/models/delivery-request
tags: ['SDK', 'Software Development Kit', 'DeliveryRequest', 'V2025DeliveryRequest']
---


# DeliveryRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Method** | **String** | Delivery method (optional for PATCH). | [optional] 
**EndpointUrl** | **String** | Receiver endpoint URL (optional for PATCH). | [optional] 
**AuthorizationHeader** | **String** | Optional authorization header value. | [optional] 

## Examples

- Prepare the resource
```powershell
$DeliveryRequest = Initialize-V2025DeliveryRequest  -Method urn:ietf:rfc:8935 `
 -EndpointUrl https://receiver.example.com/ssf/events `
 -AuthorizationHeader Bearer eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9...
```

- Convert the resource to JSON
```powershell
$DeliveryRequest | ConvertTo-JSON
```


[[Back to top]](#) 

