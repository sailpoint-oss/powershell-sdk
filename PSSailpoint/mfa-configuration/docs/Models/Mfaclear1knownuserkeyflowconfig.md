---
id: mfaclear1knownuserkeyflowconfig
title: Mfaclear1knownuserkeyflowconfig
pagination_label: Mfaclear1knownuserkeyflowconfig
sidebar_label: Mfaclear1knownuserkeyflowconfig
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'Mfaclear1knownuserkeyflowconfig', 'Mfaclear1knownuserkeyflowconfig'] 
slug: /tools/sdk/powershell/mfaconfiguration/models/mfaclear1knownuserkeyflowconfig
tags: ['SDK', 'Software Development Kit', 'Mfaclear1knownuserkeyflowconfig', 'Mfaclear1knownuserkeyflowconfig']
---


# Mfaclear1knownuserkeyflowconfig

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Enabled** | **Boolean** | If the known user key flow is enabled for the CLEAR1 MFA method. | [optional] [default to $false]
**ProjectId** | **String** | The ID of the CLEAR1 project used for the known user key flow. This field is required if `enabled` is *true*. It may be null if `enabled` is *false*. | [optional] 
**IdentityAttribute** | **String** | The name of the attribute used to map an Identity Security Cloud identity to the CLEAR1 user key. This field is required if `enabled` is *true*. It may be null if `enabled` is *false*. | [optional] 

## Examples

- Prepare the resource
```powershell
$Mfaclear1knownuserkeyflowconfig = Initialize-Mfaclear1knownuserkeyflowconfig  -Enabled true `
 -ProjectId null `
 -IdentityAttribute null
```

- Convert the resource to JSON
```powershell
$Mfaclear1knownuserkeyflowconfig | ConvertTo-JSON
```


[[Back to top]](#) 

