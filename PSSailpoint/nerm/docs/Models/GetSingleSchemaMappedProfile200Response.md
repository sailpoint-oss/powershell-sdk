---
id: nerm-get-single-schema-mapped-profile200-response
title: GetSingleSchemaMappedProfile200Response
pagination_label: GetSingleSchemaMappedProfile200Response
sidebar_label: GetSingleSchemaMappedProfile200Response
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'GetSingleSchemaMappedProfile200Response', 'NERMGetSingleSchemaMappedProfile200Response'] 
slug: /tools/sdk/powershell/nerm/models/get-single-schema-mapped-profile200-response
tags: ['SDK', 'Software Development Kit', 'GetSingleSchemaMappedProfile200Response', 'NERMGetSingleSchemaMappedProfile200Response']
---


# GetSingleSchemaMappedProfile200Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarProfile** | [**ModelProfile**](model-profile) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$GetSingleSchemaMappedProfile200Response = Initialize-NERMGetSingleSchemaMappedProfile200Response  -VarProfile null
```

- Convert the resource to JSON
```powershell
$GetSingleSchemaMappedProfile200Response | ConvertTo-JSON
```


[[Back to top]](#) 

