---
id: v2026-machine-account-subtype-config-dto
title: MachineAccountSubtypeConfigDto
pagination_label: MachineAccountSubtypeConfigDto
sidebar_label: MachineAccountSubtypeConfigDto
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'MachineAccountSubtypeConfigDto', 'V2026MachineAccountSubtypeConfigDto'] 
slug: /tools/sdk/powershell/v2026/models/machine-account-subtype-config-dto
tags: ['SDK', 'Software Development Kit', 'MachineAccountSubtypeConfigDto', 'V2026MachineAccountSubtypeConfigDto']
---


# MachineAccountSubtypeConfigDto

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**SubtypeId** | **String** | Unique identifier representing the specific subtype of the machine account, used to distinguish between different machine account categories. | [optional] 
**MachineAccountCreate** | [**MachineAccountSubtypeConfigDtoMachineAccountCreate**](machine-account-subtype-config-dto-machine-account-create) |  | [optional] 
**MachineAccountDelete** | [**MachineAccountSubtypeConfigDtoMachineAccountDelete**](machine-account-subtype-config-dto-machine-account-delete) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$MachineAccountSubtypeConfigDto = Initialize-V2026MachineAccountSubtypeConfigDto  -SubtypeId 1419fc28-a8ed-4a07-9f5c-0cb5dfad6311 `
 -MachineAccountCreate null `
 -MachineAccountDelete null
```

- Convert the resource to JSON
```powershell
$MachineAccountSubtypeConfigDto | ConvertTo-JSON
```


[[Back to top]](#) 

