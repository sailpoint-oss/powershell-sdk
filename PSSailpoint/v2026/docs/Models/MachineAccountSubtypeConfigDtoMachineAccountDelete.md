---
id: v2026-machine-account-subtype-config-dto-machine-account-delete
title: MachineAccountSubtypeConfigDtoMachineAccountDelete
pagination_label: MachineAccountSubtypeConfigDtoMachineAccountDelete
sidebar_label: MachineAccountSubtypeConfigDtoMachineAccountDelete
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'MachineAccountSubtypeConfigDtoMachineAccountDelete', 'V2026MachineAccountSubtypeConfigDtoMachineAccountDelete'] 
slug: /tools/sdk/powershell/v2026/models/machine-account-subtype-config-dto-machine-account-delete
tags: ['SDK', 'Software Development Kit', 'MachineAccountSubtypeConfigDtoMachineAccountDelete', 'V2026MachineAccountSubtypeConfigDtoMachineAccountDelete']
---


# MachineAccountSubtypeConfigDtoMachineAccountDelete

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ApprovalRequired** | **Boolean** | Indicates whether approval is required for an account deletion request. | [optional] [default to $false]
**ApprovalConfig** | [**MachineSubtypeApprovalConfig**](machine-subtype-approval-config) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$MachineAccountSubtypeConfigDtoMachineAccountDelete = Initialize-V2026MachineAccountSubtypeConfigDtoMachineAccountDelete  -ApprovalRequired true `
 -ApprovalConfig null
```

- Convert the resource to JSON
```powershell
$MachineAccountSubtypeConfigDtoMachineAccountDelete | ConvertTo-JSON
```


[[Back to top]](#) 

