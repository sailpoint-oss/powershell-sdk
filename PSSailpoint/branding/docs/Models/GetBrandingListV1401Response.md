---
id: get-branding-list-v1401-response
title: GetBrandingListV1401Response
pagination_label: GetBrandingListV1401Response
sidebar_label: GetBrandingListV1401Response
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'GetBrandingListV1401Response', 'GetBrandingListV1401Response'] 
slug: /tools/sdk/powershell/brandingv1/models/get-branding-list-v1401-response
tags: ['SDK', 'Software Development Kit', 'GetBrandingListV1401Response', 'GetBrandingListV1401Response']
---


# GetBrandingListV1401Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarError** | [**AnyType**](any-type) | A message describing the error | [optional] 

## Examples

- Prepare the resource
```powershell
$GetBrandingListV1401Response = Initialize-GetBrandingListV1401Response  -VarError JWT validation failed: JWT is expired
```

- Convert the resource to JSON
```powershell
$GetBrandingListV1401Response | ConvertTo-JSON
```


[[Back to top]](#) 

