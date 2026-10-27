---
id: list-credentials-v1429-response
title: ListCredentialsV1429Response
pagination_label: ListCredentialsV1429Response
sidebar_label: ListCredentialsV1429Response
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'ListCredentialsV1429Response', 'ListCredentialsV1429Response'] 
slug: /tools/sdk/powershell/credentials/models/list-credentials-v1429-response
tags: ['SDK', 'Software Development Kit', 'ListCredentialsV1429Response', 'ListCredentialsV1429Response']
---


# ListCredentialsV1429Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Message** | **AnyType** | A message describing the error | [optional] 

## Examples

- Prepare the resource
```powershell
$ListCredentialsV1429Response = Initialize-ListCredentialsV1429Response  -Message  Rate Limit Exceeded 
```

- Convert the resource to JSON
```powershell
$ListCredentialsV1429Response | ConvertTo-JSON
```


[[Back to top]](#) 

