---
id: machine-account-subtype-list-config-machine-account-create
title: MachineAccountSubtypeListConfigMachineAccountCreate
pagination_label: MachineAccountSubtypeListConfigMachineAccountCreate
sidebar_label: MachineAccountSubtypeListConfigMachineAccountCreate
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'MachineAccountSubtypeListConfigMachineAccountCreate', 'MachineAccountSubtypeListConfigMachineAccountCreate'] 
slug: /tools/sdk/powershell/machineaccountsubtypes/models/machine-account-subtype-list-config-machine-account-create
tags: ['SDK', 'Software Development Kit', 'MachineAccountSubtypeListConfigMachineAccountCreate', 'MachineAccountSubtypeListConfigMachineAccountCreate']
---


# MachineAccountSubtypeListConfigMachineAccountCreate

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AccountCreateEnabled** | **Boolean** | Whether machine account creation is enabled for this subtype. | [optional] [default to $false]

## Examples

- Prepare the resource
```powershell
$MachineAccountSubtypeListConfigMachineAccountCreate = Initialize-MachineAccountSubtypeListConfigMachineAccountCreate  -AccountCreateEnabled true
```

- Convert the resource to JSON
```powershell
$MachineAccountSubtypeListConfigMachineAccountCreate | ConvertTo-JSON
```


[[Back to top]](#) 

