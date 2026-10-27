---
id: device-all-of-source
title: DeviceAllOfSource
pagination_label: DeviceAllOfSource
sidebar_label: DeviceAllOfSource
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'DeviceAllOfSource', 'DeviceAllOfSource'] 
slug: /tools/sdk/powershell/devices/models/device-all-of-source
tags: ['SDK', 'Software Development Kit', 'DeviceAllOfSource', 'DeviceAllOfSource']
---


# DeviceAllOfSource

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **DtoType** |  | [optional] 
**Id** | **String** | ID of the object to which this reference applies | [optional] 
**Name** | **String** | Human-readable display name of the object to which this reference applies | [optional] 

## Examples

- Prepare the resource
```powershell
$DeviceAllOfSource = Initialize-DeviceAllOfSource  -Type null `
 -Id 2c91808568c529c60168cca6f90c1313 `
 -Name William Wilson
```

- Convert the resource to JSON
```powershell
$DeviceAllOfSource | ConvertTo-JSON
```


[[Back to top]](#) 

