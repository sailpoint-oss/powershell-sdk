---
id: v2026-replace-stream-configuration-request-delivery
title: ReplaceStreamConfigurationRequestDelivery
pagination_label: ReplaceStreamConfigurationRequestDelivery
sidebar_label: ReplaceStreamConfigurationRequestDelivery
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'ReplaceStreamConfigurationRequestDelivery', 'V2026ReplaceStreamConfigurationRequestDelivery'] 
slug: /tools/sdk/powershell/v2026/models/replace-stream-configuration-request-delivery
tags: ['SDK', 'Software Development Kit', 'ReplaceStreamConfigurationRequestDelivery', 'V2026ReplaceStreamConfigurationRequestDelivery']
---


# ReplaceStreamConfigurationRequestDelivery

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Method** | **String** | Delivery method (only push is supported). | [required]
**EndpointUrl** | **String** | Receiver endpoint URL for push delivery. | [required]
**AuthorizationHeader** | **String** | Authorization header value for delivery requests. | [optional] 

## Examples

- Prepare the resource
```powershell
$ReplaceStreamConfigurationRequestDelivery = Initialize-V2026ReplaceStreamConfigurationRequestDelivery  -Method urn:ietf:rfc:8935 `
 -EndpointUrl https://receiver.example.com/ssf/events `
 -AuthorizationHeader Bearer eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9...
```

- Convert the resource to JSON
```powershell
$ReplaceStreamConfigurationRequestDelivery | ConvertTo-JSON
```


[[Back to top]](#) 

