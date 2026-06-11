---
id: get-source-app-v1401-response
title: GetSourceAppV1401Response
pagination_label: GetSourceAppV1401Response
sidebar_label: GetSourceAppV1401Response
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'GetSourceAppV1401Response', 'GetSourceAppV1401Response'] 
slug: /tools/sdk/powershell/appsv1/models/get-source-app-v1401-response
tags: ['SDK', 'Software Development Kit', 'GetSourceAppV1401Response', 'GetSourceAppV1401Response']
---


# GetSourceAppV1401Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarError** | [**AnyType**](any-type) | A message describing the error | [optional] 

## Examples

- Prepare the resource
```powershell
$GetSourceAppV1401Response = Initialize-GetSourceAppV1401Response  -VarError JWT validation failed: JWT is expired
```

- Convert the resource to JSON
```powershell
$GetSourceAppV1401Response | ConvertTo-JSON
```


[[Back to top]](#) 

