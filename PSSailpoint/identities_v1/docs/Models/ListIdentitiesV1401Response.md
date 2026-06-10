---
id: list-identities-v1401-response
title: ListIdentitiesV1401Response
pagination_label: ListIdentitiesV1401Response
sidebar_label: ListIdentitiesV1401Response
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'ListIdentitiesV1401Response', 'ListIdentitiesV1401Response'] 
slug: /tools/sdk/powershell/identitiesv1/models/list-identities-v1401-response
tags: ['SDK', 'Software Development Kit', 'ListIdentitiesV1401Response', 'ListIdentitiesV1401Response']
---


# ListIdentitiesV1401Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarError** | [**AnyType**](any-type) | A message describing the error | [optional] 

## Examples

- Prepare the resource
```powershell
$ListIdentitiesV1401Response = Initialize-ListIdentitiesV1401Response  -VarError JWT validation failed: JWT is expired
```

- Convert the resource to JSON
```powershell
$ListIdentitiesV1401Response | ConvertTo-JSON
```


[[Back to top]](#) 

