---
id: v2026-delivery-response
title: DeliveryResponse
pagination_label: DeliveryResponse
sidebar_label: DeliveryResponse
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'DeliveryResponse', 'V2026DeliveryResponse'] 
slug: /tools/sdk/powershell/v2026/models/delivery-response
tags: ['SDK', 'Software Development Kit', 'DeliveryResponse', 'V2026DeliveryResponse']
---


# DeliveryResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Method** | **String** | Delivery method. | [optional] 
**EndpointUrl** | **String** | Receiver endpoint URL. | [optional] 

## Examples

- Prepare the resource
```powershell
$DeliveryResponse = Initialize-V2026DeliveryResponse  -Method urn:ietf:rfc:8935 `
 -EndpointUrl https://receiver.example.com/ssf/events
```

- Convert the resource to JSON
```powershell
$DeliveryResponse | ConvertTo-JSON
```


[[Back to top]](#) 

