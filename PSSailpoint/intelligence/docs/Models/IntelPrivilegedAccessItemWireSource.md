---
id: intel-privileged-access-item-wire-source
title: IntelPrivilegedAccessItemWireSource
pagination_label: IntelPrivilegedAccessItemWireSource
sidebar_label: IntelPrivilegedAccessItemWireSource
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'IntelPrivilegedAccessItemWireSource', 'IntelPrivilegedAccessItemWireSource'] 
slug: /tools/sdk/powershell/intelligence/models/intel-privileged-access-item-wire-source
tags: ['SDK', 'Software Development Kit', 'IntelPrivilegedAccessItemWireSource', 'IntelPrivilegedAccessItemWireSource']
---


# IntelPrivilegedAccessItemWireSource

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** | Human-readable source name for the privileged access item. | [optional] 
**Id** | **String** | Source identifier for the privileged access item. | [optional] 

## Examples

- Prepare the resource
```powershell
$IntelPrivilegedAccessItemWireSource = Initialize-IntelPrivilegedAccessItemWireSource  -Name Example HR Source `
 -Id src-2
```

- Convert the resource to JSON
```powershell
$IntelPrivilegedAccessItemWireSource | ConvertTo-JSON
```


[[Back to top]](#) 

