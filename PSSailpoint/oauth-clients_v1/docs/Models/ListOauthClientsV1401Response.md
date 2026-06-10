---
id: list-oauth-clients-v1401-response
title: ListOauthClientsV1401Response
pagination_label: ListOauthClientsV1401Response
sidebar_label: ListOauthClientsV1401Response
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'ListOauthClientsV1401Response', 'ListOauthClientsV1401Response'] 
slug: /tools/sdk/powershell/oauthclientsv1/models/list-oauth-clients-v1401-response
tags: ['SDK', 'Software Development Kit', 'ListOauthClientsV1401Response', 'ListOauthClientsV1401Response']
---


# ListOauthClientsV1401Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarError** | [**AnyType**](any-type) | A message describing the error | [optional] 

## Examples

- Prepare the resource
```powershell
$ListOauthClientsV1401Response = Initialize-ListOauthClientsV1401Response  -VarError JWT validation failed: JWT is expired
```

- Convert the resource to JSON
```powershell
$ListOauthClientsV1401Response | ConvertTo-JSON
```


[[Back to top]](#) 

