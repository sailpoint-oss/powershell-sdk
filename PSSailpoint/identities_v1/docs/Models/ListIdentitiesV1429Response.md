---
id: list-identities-v1429-response
title: ListIdentitiesV1429Response
pagination_label: ListIdentitiesV1429Response
sidebar_label: ListIdentitiesV1429Response
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'ListIdentitiesV1429Response', 'ListIdentitiesV1429Response'] 
slug: /tools/sdk/powershell/identitiesv1/models/list-identities-v1429-response
tags: ['SDK', 'Software Development Kit', 'ListIdentitiesV1429Response', 'ListIdentitiesV1429Response']
---


# ListIdentitiesV1429Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Message** | [**AnyType**](any-type) | A message describing the error | [optional] 

## Examples

- Prepare the resource
```powershell
$ListIdentitiesV1429Response = Initialize-ListIdentitiesV1429Response  -Message  Rate Limit Exceeded 
```

- Convert the resource to JSON
```powershell
$ListIdentitiesV1429Response | ConvertTo-JSON
```


[[Back to top]](#) 

