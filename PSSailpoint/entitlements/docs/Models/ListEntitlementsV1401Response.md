---
id: list-entitlements-v1401-response
title: ListEntitlementsV1401Response
pagination_label: ListEntitlementsV1401Response
sidebar_label: ListEntitlementsV1401Response
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'ListEntitlementsV1401Response', 'ListEntitlementsV1401Response'] 
slug: /tools/sdk/powershell/entitlements/models/list-entitlements-v1401-response
tags: ['SDK', 'Software Development Kit', 'ListEntitlementsV1401Response', 'ListEntitlementsV1401Response']
---


# ListEntitlementsV1401Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarError** | **AnyType** | A message describing the error | [optional] 

## Examples

- Prepare the resource
```powershell
$ListEntitlementsV1401Response = Initialize-ListEntitlementsV1401Response  -VarError JWT validation failed: JWT is expired
```

- Convert the resource to JSON
```powershell
$ListEntitlementsV1401Response | ConvertTo-JSON
```


[[Back to top]](#) 

