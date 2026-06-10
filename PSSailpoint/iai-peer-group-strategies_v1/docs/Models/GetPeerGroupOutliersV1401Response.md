---
id: get-peer-group-outliers-v1401-response
title: GetPeerGroupOutliersV1401Response
pagination_label: GetPeerGroupOutliersV1401Response
sidebar_label: GetPeerGroupOutliersV1401Response
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'GetPeerGroupOutliersV1401Response', 'GetPeerGroupOutliersV1401Response'] 
slug: /tools/sdk/powershell/iaipeergroupstrategiesv1/models/get-peer-group-outliers-v1401-response
tags: ['SDK', 'Software Development Kit', 'GetPeerGroupOutliersV1401Response', 'GetPeerGroupOutliersV1401Response']
---


# GetPeerGroupOutliersV1401Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarError** | [**AnyType**](any-type) | A message describing the error | [optional] 

## Examples

- Prepare the resource
```powershell
$GetPeerGroupOutliersV1401Response = Initialize-GetPeerGroupOutliersV1401Response  -VarError JWT validation failed: JWT is expired
```

- Convert the resource to JSON
```powershell
$GetPeerGroupOutliersV1401Response | ConvertTo-JSON
```


[[Back to top]](#) 

