---
id: machine-account-subtype-config-dto-machine-account-delete
title: MachineAccountSubtypeConfigDtoMachineAccountDelete
pagination_label: MachineAccountSubtypeConfigDtoMachineAccountDelete
sidebar_label: MachineAccountSubtypeConfigDtoMachineAccountDelete
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'MachineAccountSubtypeConfigDtoMachineAccountDelete', 'MachineAccountSubtypeConfigDtoMachineAccountDelete'] 
slug: /tools/sdk/powershell/machineaccountsubtypes/models/machine-account-subtype-config-dto-machine-account-delete
tags: ['SDK', 'Software Development Kit', 'MachineAccountSubtypeConfigDtoMachineAccountDelete', 'MachineAccountSubtypeConfigDtoMachineAccountDelete']
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
$MachineAccountSubtypeConfigDtoMachineAccountDelete = Initialize-MachineAccountSubtypeConfigDtoMachineAccountDelete  -ApprovalRequired true `
 -ApprovalConfig null
```

- Convert the resource to JSON
```powershell
$MachineAccountSubtypeConfigDtoMachineAccountDelete | ConvertTo-JSON
```


[[Back to top]](#) 

