---
id: v2026-machine-account-sub-type-config-dto-machine-account-create
title: MachineAccountSubTypeConfigDtoMachineAccountCreate
pagination_label: MachineAccountSubTypeConfigDtoMachineAccountCreate
sidebar_label: MachineAccountSubTypeConfigDtoMachineAccountCreate
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'MachineAccountSubTypeConfigDtoMachineAccountCreate', 'V2026MachineAccountSubTypeConfigDtoMachineAccountCreate'] 
slug: /tools/sdk/powershell/v2026/models/machine-account-sub-type-config-dto-machine-account-create
tags: ['SDK', 'Software Development Kit', 'MachineAccountSubTypeConfigDtoMachineAccountCreate', 'V2026MachineAccountSubTypeConfigDtoMachineAccountCreate']
---


# MachineAccountSubTypeConfigDtoMachineAccountCreate

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AccountCreateEnabled** | **Boolean** | Specifies if the creation of machine accounts is allowed for this subtype. | [optional] [default to $false]
**ApprovalRequired** | **Boolean** | Specifies if approval is needed before a machine account can be created for this subtype. | [optional] [default to $false]
**FormId** | **String** | formId | [optional] 
**EntitlementId** | **String** | Configuration details specifying who can approve machine account creation requests and the types of comments allowed during the approval process. | [optional] 
**ApprovalConfig** | [**ApprovalConfig**](approval-config) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$MachineAccountSubTypeConfigDtoMachineAccountCreate = Initialize-V2026MachineAccountSubTypeConfigDtoMachineAccountCreate  -AccountCreateEnabled true `
 -ApprovalRequired true `
 -FormId 4f1bb61b-a0ab-4c0a-b9fb-20f44407b75a `
 -EntitlementId 858d2151-ff19-464b-ae0d-6938b3af2baf `
 -ApprovalConfig null
```

- Convert the resource to JSON
```powershell
$MachineAccountSubTypeConfigDtoMachineAccountCreate | ConvertTo-JSON
```


[[Back to top]](#) 

