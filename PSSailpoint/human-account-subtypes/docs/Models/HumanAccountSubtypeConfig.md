---
id: human-account-subtype-config
title: HumanAccountSubtypeConfig
pagination_label: HumanAccountSubtypeConfig
sidebar_label: HumanAccountSubtypeConfig
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'HumanAccountSubtypeConfig', 'HumanAccountSubtypeConfig'] 
slug: /tools/sdk/powershell/humanaccountsubtypes/models/human-account-subtype-config
tags: ['SDK', 'Software Development Kit', 'HumanAccountSubtypeConfig', 'HumanAccountSubtypeConfig']
---


# HumanAccountSubtypeConfig

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**SubtypeId** | **String** | ID of the human account subtype this configuration belongs to. | [optional] [readonly] 
**HumanAccountCreate** | [**HumanAccountSubtypeConfigHumanAccountCreate**](human-account-subtype-config-human-account-create) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$HumanAccountSubtypeConfig = Initialize-HumanAccountSubtypeConfig  -SubtypeId 1419fc28-a8ed-4a07-9f5c-0cb5dfad6311 `
 -HumanAccountCreate null
```

- Convert the resource to JSON
```powershell
$HumanAccountSubtypeConfig | ConvertTo-JSON
```


[[Back to top]](#) 

