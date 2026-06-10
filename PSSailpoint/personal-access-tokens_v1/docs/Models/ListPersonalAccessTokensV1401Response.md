---
id: list-personal-access-tokens-v1401-response
title: ListPersonalAccessTokensV1401Response
pagination_label: ListPersonalAccessTokensV1401Response
sidebar_label: ListPersonalAccessTokensV1401Response
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'ListPersonalAccessTokensV1401Response', 'ListPersonalAccessTokensV1401Response'] 
slug: /tools/sdk/powershell/personalaccesstokensv1/models/list-personal-access-tokens-v1401-response
tags: ['SDK', 'Software Development Kit', 'ListPersonalAccessTokensV1401Response', 'ListPersonalAccessTokensV1401Response']
---


# ListPersonalAccessTokensV1401Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarError** | [**AnyType**](any-type) | A message describing the error | [optional] 

## Examples

- Prepare the resource
```powershell
$ListPersonalAccessTokensV1401Response = Initialize-ListPersonalAccessTokensV1401Response  -VarError JWT validation failed: JWT is expired
```

- Convert the resource to JSON
```powershell
$ListPersonalAccessTokensV1401Response | ConvertTo-JSON
```


[[Back to top]](#) 

