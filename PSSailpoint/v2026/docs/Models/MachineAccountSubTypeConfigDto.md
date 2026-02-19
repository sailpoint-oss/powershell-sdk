---
id: v2026-machine-account-sub-type-config-dto
title: MachineAccountSubTypeConfigDto
pagination_label: MachineAccountSubTypeConfigDto
sidebar_label: MachineAccountSubTypeConfigDto
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'MachineAccountSubTypeConfigDto', 'V2026MachineAccountSubTypeConfigDto'] 
slug: /tools/sdk/powershell/v2026/models/machine-account-sub-type-config-dto
tags: ['SDK', 'Software Development Kit', 'MachineAccountSubTypeConfigDto', 'V2026MachineAccountSubTypeConfigDto']
---


# MachineAccountSubTypeConfigDto

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**SubtypeId** | **String** | Unique identifier representing the specific subtype of the machine account, used to distinguish between different machine account categories. | [optional] 
**MachineAccountCreate** | [**MachineAccountSubTypeConfigDtoMachineAccountCreate**](machine-account-sub-type-config-dto-machine-account-create) |  | [optional] 
**MachineAccountDelete** | [**MachineAccountSubTypeConfigDtoMachineAccountDelete**](machine-account-sub-type-config-dto-machine-account-delete) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$MachineAccountSubTypeConfigDto = Initialize-V2026MachineAccountSubTypeConfigDto  -SubtypeId 1419fc28-a8ed-4a07-9f5c-0cb5dfad6311 `
 -MachineAccountCreate null `
 -MachineAccountDelete null
```

- Convert the resource to JSON
```powershell
$MachineAccountSubTypeConfigDto | ConvertTo-JSON
```


[[Back to top]](#) 

