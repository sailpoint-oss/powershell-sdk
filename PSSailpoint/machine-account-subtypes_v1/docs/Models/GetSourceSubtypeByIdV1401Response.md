---
id: get-source-subtype-by-id-v1401-response
title: GetSourceSubtypeByIdV1401Response
pagination_label: GetSourceSubtypeByIdV1401Response
sidebar_label: GetSourceSubtypeByIdV1401Response
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'GetSourceSubtypeByIdV1401Response', 'GetSourceSubtypeByIdV1401Response'] 
slug: /tools/sdk/powershell/machineaccountsubtypesv1/models/get-source-subtype-by-id-v1401-response
tags: ['SDK', 'Software Development Kit', 'GetSourceSubtypeByIdV1401Response', 'GetSourceSubtypeByIdV1401Response']
---


# GetSourceSubtypeByIdV1401Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarError** | [**AnyType**](any-type) | A message describing the error | [optional] 

## Examples

- Prepare the resource
```powershell
$GetSourceSubtypeByIdV1401Response = Initialize-GetSourceSubtypeByIdV1401Response  -VarError JWT validation failed: JWT is expired
```

- Convert the resource to JSON
```powershell
$GetSourceSubtypeByIdV1401Response | ConvertTo-JSON
```


[[Back to top]](#) 

