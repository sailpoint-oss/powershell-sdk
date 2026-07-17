---
id: intel-privileged-access-slice
title: IntelPrivilegedAccessSlice
pagination_label: IntelPrivilegedAccessSlice
sidebar_label: IntelPrivilegedAccessSlice
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'IntelPrivilegedAccessSlice', 'IntelPrivilegedAccessSlice'] 
slug: /tools/sdk/powershell/intelligence/models/intel-privileged-access-slice
tags: ['SDK', 'Software Development Kit', 'IntelPrivilegedAccessSlice', 'IntelPrivilegedAccessSlice']
---


# IntelPrivilegedAccessSlice

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Items** | [**[]IntelPrivilegedAccessItemWire**](intel-privileged-access-item-wire) | Privileged access items for the identity. | [required]

## Examples

- Prepare the resource
```powershell
$IntelPrivilegedAccessSlice = Initialize-IntelPrivilegedAccessSlice  -Items null
```

- Convert the resource to JSON
```powershell
$IntelPrivilegedAccessSlice | ConvertTo-JSON
```


[[Back to top]](#) 

