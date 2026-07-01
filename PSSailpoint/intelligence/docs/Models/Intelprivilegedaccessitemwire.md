---
id: intelprivilegedaccessitemwire
title: Intelprivilegedaccessitemwire
pagination_label: Intelprivilegedaccessitemwire
sidebar_label: Intelprivilegedaccessitemwire
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'Intelprivilegedaccessitemwire', 'Intelprivilegedaccessitemwire'] 
slug: /tools/sdk/powershell/intelligence/models/intelprivilegedaccessitemwire
tags: ['SDK', 'Software Development Kit', 'Intelprivilegedaccessitemwire', 'Intelprivilegedaccessitemwire']
---


# Intelprivilegedaccessitemwire

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Privileged** | **Boolean** | True when this item is classified as privileged access for the identity. | [required]
**Id** | **String** | Identifier of the privileged access item. | [required]
**Type** | **String** | Type of privileged access object. | [required]
**DisplayName** | **String** | Display label for the privileged access item in administrative experiences. | [optional] 
**Name** | **String** | Technical name of the privileged access item. | [optional] 
**Source** | [**IntelprivilegedaccessitemwireSource**](intelprivilegedaccessitemwire-source) |  | [optional] 
**Attribute** | **String** | Source attribute name that carries the privileged value when applicable. | [optional] 
**Value** | **String** | Privileged value on the source attribute when applicable. | [optional] 

## Examples

- Prepare the resource
```powershell
$Intelprivilegedaccessitemwire = Initialize-Intelprivilegedaccessitemwire  -Privileged true `
 -Id ent-1 `
 -Type entitlement `
 -DisplayName Example_Admin_Access `
 -Name Example_Admin_Access `
 -Source null `
 -Attribute EXAMPLE_PERMISSION_GROUPS `
 -Value Example_Admin_Access
```

- Convert the resource to JSON
```powershell
$Intelprivilegedaccessitemwire | ConvertTo-JSON
```


[[Back to top]](#) 

