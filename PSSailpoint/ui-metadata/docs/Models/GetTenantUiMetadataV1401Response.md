---
id: get-tenant-ui-metadata-v1401-response
title: GetTenantUiMetadataV1401Response
pagination_label: GetTenantUiMetadataV1401Response
sidebar_label: GetTenantUiMetadataV1401Response
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'GetTenantUiMetadataV1401Response', 'GetTenantUiMetadataV1401Response'] 
slug: /tools/sdk/powershell/uimetadatav1/models/get-tenant-ui-metadata-v1401-response
tags: ['SDK', 'Software Development Kit', 'GetTenantUiMetadataV1401Response', 'GetTenantUiMetadataV1401Response']
---


# GetTenantUiMetadataV1401Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarError** | [**AnyType**](any-type) | A message describing the error | [optional] 

## Examples

- Prepare the resource
```powershell
$GetTenantUiMetadataV1401Response = Initialize-GetTenantUiMetadataV1401Response  -VarError JWT validation failed: JWT is expired
```

- Convert the resource to JSON
```powershell
$GetTenantUiMetadataV1401Response | ConvertTo-JSON
```


[[Back to top]](#) 

