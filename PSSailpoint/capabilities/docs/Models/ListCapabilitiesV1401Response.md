---
id: list-capabilities-v1401-response
title: ListCapabilitiesV1401Response
pagination_label: ListCapabilitiesV1401Response
sidebar_label: ListCapabilitiesV1401Response
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'ListCapabilitiesV1401Response', 'ListCapabilitiesV1401Response'] 
slug: /tools/sdk/powershell/capabilities/models/list-capabilities-v1401-response
tags: ['SDK', 'Software Development Kit', 'ListCapabilitiesV1401Response', 'ListCapabilitiesV1401Response']
---


# ListCapabilitiesV1401Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarError** | **AnyType** | A message describing the error | [optional] 

## Examples

- Prepare the resource
```powershell
$ListCapabilitiesV1401Response = Initialize-ListCapabilitiesV1401Response  -VarError JWT validation failed: JWT is expired
```

- Convert the resource to JSON
```powershell
$ListCapabilitiesV1401Response | ConvertTo-JSON
```


[[Back to top]](#) 

