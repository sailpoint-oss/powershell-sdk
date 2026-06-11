---
id: intelprivilegedaccessitemwire
title: Intelprivilegedaccessitemwire
pagination_label: Intelprivilegedaccessitemwire
sidebar_label: Intelprivilegedaccessitemwire
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'Intelprivilegedaccessitemwire', 'Intelprivilegedaccessitemwire'] 
slug: /tools/sdk/powershell/intelligencepackagev1/models/intelprivilegedaccessitemwire
tags: ['SDK', 'Software Development Kit', 'Intelprivilegedaccessitemwire', 'Intelprivilegedaccessitemwire']
---


# Intelprivilegedaccessitemwire

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Privileged** | **Boolean** | True when SDS Search classifies this item as privileged access for the identity. | [required]
**DisplayName** | **String** | Display label for the privileged access item in administrative experiences. | [optional] 
**Name** | **String** | Technical name of the privileged access item from SDS Search. | [optional] 
**Standalone** | **Boolean** | True when the privileged item is modeled as a standalone entitlement or access object. | [optional] [default to $false]
**Id** | **String** | Identifier of the privileged access item returned by SDS Search. | [required]
**Source** | [**IntelprivilegedaccessitemwireSource**](intelprivilegedaccessitemwire-source) |  | [optional] 
**Attribute** | **String** | Source attribute name that carries the privileged value when applicable. | [optional] 
**Type** | **String** | Object type classification from SDS Search (for example ENTITLEMENT). | [required]
**Value** | **String** | Privileged value on the source attribute when applicable. | [optional] 

## Examples

- Prepare the resource
```powershell
$Intelprivilegedaccessitemwire = Initialize-Intelprivilegedaccessitemwire  -Privileged true `
 -DisplayName Absence_Administrator `
 -Name Absence_Administrator `
 -Standalone true `
 -Id ent-1 `
 -Source null `
 -Attribute USER_BASED_SECURITY_GROUPS `
 -Type ENTITLEMENT `
 -Value Absence_Administrator
```

- Convert the resource to JSON
```powershell
$Intelprivilegedaccessitemwire | ConvertTo-JSON
```


[[Back to top]](#) 

