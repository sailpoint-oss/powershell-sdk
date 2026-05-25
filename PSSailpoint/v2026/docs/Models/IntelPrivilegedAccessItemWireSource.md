---
id: v2026-intel-privileged-access-item-wire-source
title: IntelPrivilegedAccessItemWireSource
pagination_label: IntelPrivilegedAccessItemWireSource
sidebar_label: IntelPrivilegedAccessItemWireSource
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'IntelPrivilegedAccessItemWireSource', 'V2026IntelPrivilegedAccessItemWireSource'] 
slug: /tools/sdk/powershell/v2026/models/intel-privileged-access-item-wire-source
tags: ['SDK', 'Software Development Kit', 'IntelPrivilegedAccessItemWireSource', 'V2026IntelPrivilegedAccessItemWireSource']
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
$IntelPrivilegedAccessItemWireSource = Initialize-V2026IntelPrivilegedAccessItemWireSource  -Name Workday `
 -Id src-2
```

- Convert the resource to JSON
```powershell
$IntelPrivilegedAccessItemWireSource | ConvertTo-JSON
```


[[Back to top]](#) 

