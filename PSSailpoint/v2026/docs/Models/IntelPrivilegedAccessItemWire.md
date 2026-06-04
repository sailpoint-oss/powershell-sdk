---
id: v2026-intel-privileged-access-item-wire
title: IntelPrivilegedAccessItemWire
pagination_label: IntelPrivilegedAccessItemWire
sidebar_label: IntelPrivilegedAccessItemWire
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'IntelPrivilegedAccessItemWire', 'V2026IntelPrivilegedAccessItemWire'] 
slug: /tools/sdk/powershell/v2026/models/intel-privileged-access-item-wire
tags: ['SDK', 'Software Development Kit', 'IntelPrivilegedAccessItemWire', 'V2026IntelPrivilegedAccessItemWire']
---


# IntelPrivilegedAccessItemWire

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Privileged** | **Boolean** | True when SDS Search classifies this item as privileged access for the identity. | [required]
**DisplayName** | **String** | Display label for the privileged access item in administrative experiences. | [optional] 
**Name** | **String** | Technical name of the privileged access item from SDS Search. | [optional] 
**Standalone** | **Boolean** | True when the privileged item is modeled as a standalone entitlement or access object. | [optional] [default to $false]
**Id** | **String** | Identifier of the privileged access item returned by SDS Search. | [required]
**Source** | [**IntelPrivilegedAccessItemWireSource**](intel-privileged-access-item-wire-source) |  | [optional] 
**Attribute** | **String** | Source attribute name that carries the privileged value when applicable. | [optional] 
**Type** | **String** | Object type classification from SDS Search (for example ENTITLEMENT). | [required]
**Value** | **String** | Privileged value on the source attribute when applicable. | [optional] 

## Examples

- Prepare the resource
```powershell
$IntelPrivilegedAccessItemWire = Initialize-V2026IntelPrivilegedAccessItemWire  -Privileged true `
 -DisplayName Example_Admin_Access `
 -Name Example_Admin_Access `
 -Standalone true `
 -Id ent-1 `
 -Source null `
 -Attribute EXAMPLE_PERMISSION_GROUPS `
 -Type ENTITLEMENT `
 -Value Example_Admin_Access
```

- Convert the resource to JSON
```powershell
$IntelPrivilegedAccessItemWire | ConvertTo-JSON
```


[[Back to top]](#) 

