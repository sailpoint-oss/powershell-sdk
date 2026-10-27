---
id: source-subtype-v2-with-config-all-of-config
title: SourceSubtypeV2WithConfigAllOfConfig
pagination_label: SourceSubtypeV2WithConfigAllOfConfig
sidebar_label: SourceSubtypeV2WithConfigAllOfConfig
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'SourceSubtypeV2WithConfigAllOfConfig', 'SourceSubtypeV2WithConfigAllOfConfig'] 
slug: /tools/sdk/powershell/machineaccountsubtypes/models/source-subtype-v2-with-config-all-of-config
tags: ['SDK', 'Software Development Kit', 'SourceSubtypeV2WithConfigAllOfConfig', 'SourceSubtypeV2WithConfigAllOfConfig']
---


# SourceSubtypeV2WithConfigAllOfConfig

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**MachineAccountCreate** | [**SourceSubtypeV2WithConfigAllOfConfigMachineAccountCreate**](source-subtype-v2-with-config-all-of-config-machine-account-create) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$SourceSubtypeV2WithConfigAllOfConfig = Initialize-SourceSubtypeV2WithConfigAllOfConfig  -MachineAccountCreate null
```

- Convert the resource to JSON
```powershell
$SourceSubtypeV2WithConfigAllOfConfig | ConvertTo-JSON
```


[[Back to top]](#) 

