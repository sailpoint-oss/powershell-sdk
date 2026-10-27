---
id: list-devices-v1401-response
title: ListDevicesV1401Response
pagination_label: ListDevicesV1401Response
sidebar_label: ListDevicesV1401Response
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'ListDevicesV1401Response', 'ListDevicesV1401Response'] 
slug: /tools/sdk/powershell/devices/models/list-devices-v1401-response
tags: ['SDK', 'Software Development Kit', 'ListDevicesV1401Response', 'ListDevicesV1401Response']
---


# ListDevicesV1401Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarError** | **AnyType** | A message describing the error | [optional] 

## Examples

- Prepare the resource
```powershell
$ListDevicesV1401Response = Initialize-ListDevicesV1401Response  -VarError JWT validation failed: JWT is expired
```

- Convert the resource to JSON
```powershell
$ListDevicesV1401Response | ConvertTo-JSON
```


[[Back to top]](#) 

