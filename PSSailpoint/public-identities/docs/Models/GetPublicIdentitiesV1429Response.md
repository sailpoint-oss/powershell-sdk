---
id: get-public-identities-v1429-response
title: GetPublicIdentitiesV1429Response
pagination_label: GetPublicIdentitiesV1429Response
sidebar_label: GetPublicIdentitiesV1429Response
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'GetPublicIdentitiesV1429Response', 'GetPublicIdentitiesV1429Response'] 
slug: /tools/sdk/powershell/publicidentitiesv1/models/get-public-identities-v1429-response
tags: ['SDK', 'Software Development Kit', 'GetPublicIdentitiesV1429Response', 'GetPublicIdentitiesV1429Response']
---


# GetPublicIdentitiesV1429Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Message** | [**AnyType**](any-type) | A message describing the error | [optional] 

## Examples

- Prepare the resource
```powershell
$GetPublicIdentitiesV1429Response = Initialize-GetPublicIdentitiesV1429Response  -Message  Rate Limit Exceeded 
```

- Convert the resource to JSON
```powershell
$GetPublicIdentitiesV1429Response | ConvertTo-JSON
```


[[Back to top]](#) 

