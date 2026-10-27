---
id: device-owners-primary
title: DeviceOwnersPrimary
pagination_label: DeviceOwnersPrimary
sidebar_label: DeviceOwnersPrimary
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'DeviceOwnersPrimary', 'DeviceOwnersPrimary'] 
slug: /tools/sdk/powershell/devices/models/device-owners-primary
tags: ['SDK', 'Software Development Kit', 'DeviceOwnersPrimary', 'DeviceOwnersPrimary']
---


# DeviceOwnersPrimary

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **DtoType** |  | [optional] 
**Id** | **String** | ID of the object to which this reference applies | [optional] 
**Name** | **String** | Human-readable display name of the object to which this reference applies | [optional] 

## Examples

- Prepare the resource
```powershell
$DeviceOwnersPrimary = Initialize-DeviceOwnersPrimary  -Type null `
 -Id 2c91808568c529c60168cca6f90c1313 `
 -Name William Wilson
```

- Convert the resource to JSON
```powershell
$DeviceOwnersPrimary | ConvertTo-JSON
```


[[Back to top]](#) 

