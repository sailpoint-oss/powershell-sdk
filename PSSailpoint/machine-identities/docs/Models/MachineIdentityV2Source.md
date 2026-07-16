---
id: machine-identity-v2-source
title: MachineIdentityV2Source
pagination_label: MachineIdentityV2Source
sidebar_label: MachineIdentityV2Source
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'MachineIdentityV2Source', 'MachineIdentityV2Source'] 
slug: /tools/sdk/powershell/machineidentities/models/machine-identity-v2-source
tags: ['SDK', 'Software Development Kit', 'MachineIdentityV2Source', 'MachineIdentityV2Source']
---


# MachineIdentityV2Source

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **Dtotype** |  | [optional] 
**Id** | **String** | ID of the object to which this reference applies | [optional] 
**Name** | **String** | Human-readable display name of the object to which this reference applies | [optional] 

## Examples

- Prepare the resource
```powershell
$MachineIdentityV2Source = Initialize-MachineIdentityV2Source  -Type null `
 -Id 2c91808568c529c60168cca6f90c1313 `
 -Name William Wilson
```

- Convert the resource to JSON
```powershell
$MachineIdentityV2Source | ConvertTo-JSON
```


[[Back to top]](#) 

