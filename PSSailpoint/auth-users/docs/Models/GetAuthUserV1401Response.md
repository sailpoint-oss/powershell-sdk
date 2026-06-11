---
id: get-auth-user-v1401-response
title: GetAuthUserV1401Response
pagination_label: GetAuthUserV1401Response
sidebar_label: GetAuthUserV1401Response
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'GetAuthUserV1401Response', 'GetAuthUserV1401Response'] 
slug: /tools/sdk/powershell/authusersv1/models/get-auth-user-v1401-response
tags: ['SDK', 'Software Development Kit', 'GetAuthUserV1401Response', 'GetAuthUserV1401Response']
---


# GetAuthUserV1401Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarError** | [**AnyType**](any-type) | A message describing the error | [optional] 

## Examples

- Prepare the resource
```powershell
$GetAuthUserV1401Response = Initialize-GetAuthUserV1401Response  -VarError JWT validation failed: JWT is expired
```

- Convert the resource to JSON
```powershell
$GetAuthUserV1401Response | ConvertTo-JSON
```


[[Back to top]](#) 

