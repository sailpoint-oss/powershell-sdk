---
id: list-oauth-clients-v1429-response
title: ListOauthClientsV1429Response
pagination_label: ListOauthClientsV1429Response
sidebar_label: ListOauthClientsV1429Response
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'ListOauthClientsV1429Response', 'ListOauthClientsV1429Response'] 
slug: /tools/sdk/powershell/oauthclientsv1/models/list-oauth-clients-v1429-response
tags: ['SDK', 'Software Development Kit', 'ListOauthClientsV1429Response', 'ListOauthClientsV1429Response']
---


# ListOauthClientsV1429Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Message** | [**AnyType**](any-type) | A message describing the error | [optional] 

## Examples

- Prepare the resource
```powershell
$ListOauthClientsV1429Response = Initialize-ListOauthClientsV1429Response  -Message  Rate Limit Exceeded 
```

- Convert the resource to JSON
```powershell
$ListOauthClientsV1429Response | ConvertTo-JSON
```


[[Back to top]](#) 

