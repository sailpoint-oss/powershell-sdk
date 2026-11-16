---
id: machine-account-subtype-list-config
title: MachineAccountSubtypeListConfig
pagination_label: MachineAccountSubtypeListConfig
sidebar_label: MachineAccountSubtypeListConfig
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'MachineAccountSubtypeListConfig', 'MachineAccountSubtypeListConfig'] 
slug: /tools/sdk/powershell/machineaccountsubtypes/models/machine-account-subtype-list-config
tags: ['SDK', 'Software Development Kit', 'MachineAccountSubtypeListConfig', 'MachineAccountSubtypeListConfig']
---


# MachineAccountSubtypeListConfig

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**MachineAccountCreate** | [**MachineAccountSubtypeListConfigMachineAccountCreate**](machine-account-subtype-list-config-machine-account-create) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$MachineAccountSubtypeListConfig = Initialize-MachineAccountSubtypeListConfig  -MachineAccountCreate null
```

- Convert the resource to JSON
```powershell
$MachineAccountSubtypeListConfig | ConvertTo-JSON
```


[[Back to top]](#) 

