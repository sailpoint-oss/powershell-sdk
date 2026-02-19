---
id: v2026-machine-account-sub-type-config-dto-machine-account-delete
title: MachineAccountSubTypeConfigDtoMachineAccountDelete
pagination_label: MachineAccountSubTypeConfigDtoMachineAccountDelete
sidebar_label: MachineAccountSubTypeConfigDtoMachineAccountDelete
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'MachineAccountSubTypeConfigDtoMachineAccountDelete', 'V2026MachineAccountSubTypeConfigDtoMachineAccountDelete'] 
slug: /tools/sdk/powershell/v2026/models/machine-account-sub-type-config-dto-machine-account-delete
tags: ['SDK', 'Software Development Kit', 'MachineAccountSubTypeConfigDtoMachineAccountDelete', 'V2026MachineAccountSubTypeConfigDtoMachineAccountDelete']
---


# MachineAccountSubTypeConfigDtoMachineAccountDelete

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ApprovalRequired** | **Boolean** | Indicates whether approval is required for an account deletion request. | [optional] [default to $false]
**ApprovalConfig** | [**ApprovalConfig**](approval-config) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$MachineAccountSubTypeConfigDtoMachineAccountDelete = Initialize-V2026MachineAccountSubTypeConfigDtoMachineAccountDelete  -ApprovalRequired true `
 -ApprovalConfig null
```

- Convert the resource to JSON
```powershell
$MachineAccountSubTypeConfigDtoMachineAccountDelete | ConvertTo-JSON
```


[[Back to top]](#) 

