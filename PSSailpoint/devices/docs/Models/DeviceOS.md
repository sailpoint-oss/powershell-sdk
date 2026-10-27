---
id: device-os
title: DeviceOS
pagination_label: DeviceOS
sidebar_label: DeviceOS
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'DeviceOS', 'DeviceOS'] 
slug: /tools/sdk/powershell/devices/models/device-os
tags: ['SDK', 'Software Development Kit', 'DeviceOS', 'DeviceOS']
---


# DeviceOS

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** | The operating system type. | [optional] 
**Version** | **String** | The operating system version. | [optional] 

## Examples

- Prepare the resource
```powershell
$DeviceOS = Initialize-DeviceOS  -Type macos `
 -Version 14.5
```

- Convert the resource to JSON
```powershell
$DeviceOS | ConvertTo-JSON
```


[[Back to top]](#) 

