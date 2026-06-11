---
id: get-total-count-v1401-response
title: GetTotalCountV1401Response
pagination_label: GetTotalCountV1401Response
sidebar_label: GetTotalCountV1401Response
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'GetTotalCountV1401Response', 'GetTotalCountV1401Response'] 
slug: /tools/sdk/powershell/apiusagev1/models/get-total-count-v1401-response
tags: ['SDK', 'Software Development Kit', 'GetTotalCountV1401Response', 'GetTotalCountV1401Response']
---


# GetTotalCountV1401Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarError** | [**AnyType**](any-type) | A message describing the error | [optional] 

## Examples

- Prepare the resource
```powershell
$GetTotalCountV1401Response = Initialize-GetTotalCountV1401Response  -VarError JWT validation failed: JWT is expired
```

- Convert the resource to JSON
```powershell
$GetTotalCountV1401Response | ConvertTo-JSON
```


[[Back to top]](#) 

