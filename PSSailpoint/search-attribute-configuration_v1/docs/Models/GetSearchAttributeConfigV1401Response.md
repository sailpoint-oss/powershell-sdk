---
id: get-search-attribute-config-v1401-response
title: GetSearchAttributeConfigV1401Response
pagination_label: GetSearchAttributeConfigV1401Response
sidebar_label: GetSearchAttributeConfigV1401Response
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'GetSearchAttributeConfigV1401Response', 'GetSearchAttributeConfigV1401Response'] 
slug: /tools/sdk/powershell/searchattributeconfigurationv1/models/get-search-attribute-config-v1401-response
tags: ['SDK', 'Software Development Kit', 'GetSearchAttributeConfigV1401Response', 'GetSearchAttributeConfigV1401Response']
---


# GetSearchAttributeConfigV1401Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarError** | [**AnyType**](any-type) | A message describing the error | [optional] 

## Examples

- Prepare the resource
```powershell
$GetSearchAttributeConfigV1401Response = Initialize-GetSearchAttributeConfigV1401Response  -VarError JWT validation failed: JWT is expired
```

- Convert the resource to JSON
```powershell
$GetSearchAttributeConfigV1401Response | ConvertTo-JSON
```


[[Back to top]](#) 

