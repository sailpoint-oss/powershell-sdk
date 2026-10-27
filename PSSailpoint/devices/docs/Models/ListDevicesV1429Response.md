---
id: list-devices-v1429-response
title: ListDevicesV1429Response
pagination_label: ListDevicesV1429Response
sidebar_label: ListDevicesV1429Response
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'ListDevicesV1429Response', 'ListDevicesV1429Response'] 
slug: /tools/sdk/powershell/devices/models/list-devices-v1429-response
tags: ['SDK', 'Software Development Kit', 'ListDevicesV1429Response', 'ListDevicesV1429Response']
---


# ListDevicesV1429Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Message** | **AnyType** | A message describing the error | [optional] 

## Examples

- Prepare the resource
```powershell
$ListDevicesV1429Response = Initialize-ListDevicesV1429Response  -Message  Rate Limit Exceeded 
```

- Convert the resource to JSON
```powershell
$ListDevicesV1429Response | ConvertTo-JSON
```


[[Back to top]](#) 

