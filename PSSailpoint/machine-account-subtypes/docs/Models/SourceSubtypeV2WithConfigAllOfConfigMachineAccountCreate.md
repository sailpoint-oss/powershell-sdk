---
id: source-subtype-v2-with-config-all-of-config-machine-account-create
title: SourceSubtypeV2WithConfigAllOfConfigMachineAccountCreate
pagination_label: SourceSubtypeV2WithConfigAllOfConfigMachineAccountCreate
sidebar_label: SourceSubtypeV2WithConfigAllOfConfigMachineAccountCreate
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'SourceSubtypeV2WithConfigAllOfConfigMachineAccountCreate', 'SourceSubtypeV2WithConfigAllOfConfigMachineAccountCreate'] 
slug: /tools/sdk/powershell/machineaccountsubtypes/models/source-subtype-v2-with-config-all-of-config-machine-account-create
tags: ['SDK', 'Software Development Kit', 'SourceSubtypeV2WithConfigAllOfConfigMachineAccountCreate', 'SourceSubtypeV2WithConfigAllOfConfigMachineAccountCreate']
---


# SourceSubtypeV2WithConfigAllOfConfigMachineAccountCreate

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AccountCreateEnabled** | **Boolean** | Indicates whether machine account creation is enabled for the subtype. | [optional] [default to $false]

## Examples

- Prepare the resource
```powershell
$SourceSubtypeV2WithConfigAllOfConfigMachineAccountCreate = Initialize-SourceSubtypeV2WithConfigAllOfConfigMachineAccountCreate  -AccountCreateEnabled true
```

- Convert the resource to JSON
```powershell
$SourceSubtypeV2WithConfigAllOfConfigMachineAccountCreate | ConvertTo-JSON
```


[[Back to top]](#) 

