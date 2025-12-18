---
id: v2025-machine-identity-owner-reference
title: MachineIdentityOwnerReference
pagination_label: MachineIdentityOwnerReference
sidebar_label: MachineIdentityOwnerReference
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'MachineIdentityOwnerReference', 'V2025MachineIdentityOwnerReference'] 
slug: /tools/sdk/powershell/v2025/models/machine-identity-owner-reference
tags: ['SDK', 'Software Development Kit', 'MachineIdentityOwnerReference', 'V2025MachineIdentityOwnerReference']
---


# MachineIdentityOwnerReference

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** | Owner's type. | [required]
**Id** | **String** | Owner ID. | [required]
**Name** | **String** | Owner's display name. | [required]
**IsPrimary** | **Boolean** | Indicates if this owner is the primary owner. | [optional] [default to $false]

## Examples

- Prepare the resource
```powershell
$MachineIdentityOwnerReference = Initialize-V2025MachineIdentityOwnerReference  -Type IDENTITY `
 -Id 84d8c1b819144608b8b8bc3b84ddbb7b `
 -Name Jerrie admin3cf084 `
 -IsPrimary true
```

- Convert the resource to JSON
```powershell
$MachineIdentityOwnerReference | ConvertTo-JSON
```


[[Back to top]](#) 

