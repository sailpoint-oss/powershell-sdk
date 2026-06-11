---
id: get-peer-group-outliers-v1429-response
title: GetPeerGroupOutliersV1429Response
pagination_label: GetPeerGroupOutliersV1429Response
sidebar_label: GetPeerGroupOutliersV1429Response
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'GetPeerGroupOutliersV1429Response', 'GetPeerGroupOutliersV1429Response'] 
slug: /tools/sdk/powershell/iaipeergroupstrategiesv1/models/get-peer-group-outliers-v1429-response
tags: ['SDK', 'Software Development Kit', 'GetPeerGroupOutliersV1429Response', 'GetPeerGroupOutliersV1429Response']
---


# GetPeerGroupOutliersV1429Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Message** | [**AnyType**](any-type) | A message describing the error | [optional] 

## Examples

- Prepare the resource
```powershell
$GetPeerGroupOutliersV1429Response = Initialize-GetPeerGroupOutliersV1429Response  -Message  Rate Limit Exceeded 
```

- Convert the resource to JSON
```powershell
$GetPeerGroupOutliersV1429Response | ConvertTo-JSON
```


[[Back to top]](#) 

