---
id: v2025-transmitter-metadata
title: TransmitterMetadata
pagination_label: TransmitterMetadata
sidebar_label: TransmitterMetadata
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'TransmitterMetadata', 'V2025TransmitterMetadata'] 
slug: /tools/sdk/powershell/v2025/models/transmitter-metadata
tags: ['SDK', 'Software Development Kit', 'TransmitterMetadata', 'V2025TransmitterMetadata']
---


# TransmitterMetadata

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**SpecVersion** | **String** | Version of the SSF specification supported. | [optional] 
**Issuer** | **String** | Base URL of the transmitter (issuer). | [optional] 
**JwksUri** | **String** | URL of the transmitter's JSON Web Key Set. | [optional] 
**DeliveryMethodsSupported** | **[]String** | Supported delivery methods (e.g. push URN). | [optional] 
**ConfigurationEndpoint** | **String** | Endpoint for stream configuration (create, read, update, replace, delete). | [optional] 
**StatusEndpoint** | **String** | Endpoint for reading and updating stream status. | [optional] 
**VerificationEndpoint** | **String** | Endpoint for receiver verification. | [optional] 
**AuthorizationSchemes** | [**[]AuthorizationScheme**](authorization-scheme) | Supported authorization schemes (e.g. OAuth2, Bearer). | [optional] 

## Examples

- Prepare the resource
```powershell
$TransmitterMetadata = Initialize-V2025TransmitterMetadata  -SpecVersion 1_0 `
 -Issuer https://tenant.api.identitynow.com `
 -JwksUri https://tenant.api.identitynow.com/ssf/jwks `
 -DeliveryMethodsSupported [urn:ietf:rfc:8935] `
 -ConfigurationEndpoint https://tenant.api.identitynow.com/latest/ssf/streams `
 -StatusEndpoint https://tenant.api.identitynow.com/latest/ssf/streams/status `
 -VerificationEndpoint https://tenant.api.identitynow.com/latest/ssf/streams/verify `
 -AuthorizationSchemes null
```

- Convert the resource to JSON
```powershell
$TransmitterMetadata | ConvertTo-JSON
```


[[Back to top]](#) 

