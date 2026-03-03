---
id: v2025-authorization-scheme
title: AuthorizationScheme
pagination_label: AuthorizationScheme
sidebar_label: AuthorizationScheme
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'AuthorizationScheme', 'V2025AuthorizationScheme'] 
slug: /tools/sdk/powershell/v2025/models/authorization-scheme
tags: ['SDK', 'Software Development Kit', 'AuthorizationScheme', 'V2025AuthorizationScheme']
---


# AuthorizationScheme

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**SpecUrn** | **String** | URN describing the authorization specification. OAuth 2.0: `urn:ietf:rfc:6749`; Bearer token: `urn:ietf:rfc:6750`.  | [optional] 

## Examples

- Prepare the resource
```powershell
$AuthorizationScheme = Initialize-V2025AuthorizationScheme  -SpecUrn urn:ietf:rfc:6749
```

- Convert the resource to JSON
```powershell
$AuthorizationScheme | ConvertTo-JSON
```


[[Back to top]](#) 

