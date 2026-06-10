---
id: search-intel-identities-v1401-response
title: SearchIntelIdentitiesV1401Response
pagination_label: SearchIntelIdentitiesV1401Response
sidebar_label: SearchIntelIdentitiesV1401Response
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'SearchIntelIdentitiesV1401Response', 'SearchIntelIdentitiesV1401Response'] 
slug: /tools/sdk/powershell/intelligencepackagev1/models/search-intel-identities-v1401-response
tags: ['SDK', 'Software Development Kit', 'SearchIntelIdentitiesV1401Response', 'SearchIntelIdentitiesV1401Response']
---


# SearchIntelIdentitiesV1401Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarError** | [**AnyType**](any-type) | A message describing the error | [optional] 

## Examples

- Prepare the resource
```powershell
$SearchIntelIdentitiesV1401Response = Initialize-SearchIntelIdentitiesV1401Response  -VarError JWT validation failed: JWT is expired
```

- Convert the resource to JSON
```powershell
$SearchIntelIdentitiesV1401Response | ConvertTo-JSON
```


[[Back to top]](#) 

