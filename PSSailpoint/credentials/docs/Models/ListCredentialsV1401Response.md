---
id: list-credentials-v1401-response
title: ListCredentialsV1401Response
pagination_label: ListCredentialsV1401Response
sidebar_label: ListCredentialsV1401Response
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'ListCredentialsV1401Response', 'ListCredentialsV1401Response'] 
slug: /tools/sdk/powershell/credentials/models/list-credentials-v1401-response
tags: ['SDK', 'Software Development Kit', 'ListCredentialsV1401Response', 'ListCredentialsV1401Response']
---


# ListCredentialsV1401Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarError** | **AnyType** | A message describing the error | [optional] 

## Examples

- Prepare the resource
```powershell
$ListCredentialsV1401Response = Initialize-ListCredentialsV1401Response  -VarError JWT validation failed: JWT is expired
```

- Convert the resource to JSON
```powershell
$ListCredentialsV1401Response | ConvertTo-JSON
```


[[Back to top]](#) 

