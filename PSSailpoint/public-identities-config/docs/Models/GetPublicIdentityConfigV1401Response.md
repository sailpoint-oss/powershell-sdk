---
id: get-public-identity-config-v1401-response
title: GetPublicIdentityConfigV1401Response
pagination_label: GetPublicIdentityConfigV1401Response
sidebar_label: GetPublicIdentityConfigV1401Response
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'GetPublicIdentityConfigV1401Response', 'GetPublicIdentityConfigV1401Response'] 
slug: /tools/sdk/powershell/publicidentitiesconfigv1/models/get-public-identity-config-v1401-response
tags: ['SDK', 'Software Development Kit', 'GetPublicIdentityConfigV1401Response', 'GetPublicIdentityConfigV1401Response']
---


# GetPublicIdentityConfigV1401Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarError** | [**AnyType**](any-type) | A message describing the error | [optional] 

## Examples

- Prepare the resource
```powershell
$GetPublicIdentityConfigV1401Response = Initialize-GetPublicIdentityConfigV1401Response  -VarError JWT validation failed: JWT is expired
```

- Convert the resource to JSON
```powershell
$GetPublicIdentityConfigV1401Response | ConvertTo-JSON
```


[[Back to top]](#) 

