---
id: get-public-identities-v1401-response
title: GetPublicIdentitiesV1401Response
pagination_label: GetPublicIdentitiesV1401Response
sidebar_label: GetPublicIdentitiesV1401Response
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'GetPublicIdentitiesV1401Response', 'GetPublicIdentitiesV1401Response'] 
slug: /tools/sdk/powershell/publicidentitiesv1/models/get-public-identities-v1401-response
tags: ['SDK', 'Software Development Kit', 'GetPublicIdentitiesV1401Response', 'GetPublicIdentitiesV1401Response']
---


# GetPublicIdentitiesV1401Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarError** | [**AnyType**](any-type) | A message describing the error | [optional] 

## Examples

- Prepare the resource
```powershell
$GetPublicIdentitiesV1401Response = Initialize-GetPublicIdentitiesV1401Response  -VarError JWT validation failed: JWT is expired
```

- Convert the resource to JSON
```powershell
$GetPublicIdentitiesV1401Response | ConvertTo-JSON
```


[[Back to top]](#) 

