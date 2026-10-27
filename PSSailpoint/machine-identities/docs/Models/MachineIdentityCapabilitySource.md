---
id: machine-identity-capability-source
title: MachineIdentityCapabilitySource
pagination_label: MachineIdentityCapabilitySource
sidebar_label: MachineIdentityCapabilitySource
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'MachineIdentityCapabilitySource', 'MachineIdentityCapabilitySource'] 
slug: /tools/sdk/powershell/machineidentities/models/machine-identity-capability-source
tags: ['SDK', 'Software Development Kit', 'MachineIdentityCapabilitySource', 'MachineIdentityCapabilitySource']
---


# MachineIdentityCapabilitySource

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **DtoType** |  | [optional] 
**Id** | **String** | ID of the object to which this reference applies | [optional] 
**Name** | **String** | Human-readable display name of the object to which this reference applies | [optional] 

## Examples

- Prepare the resource
```powershell
$MachineIdentityCapabilitySource = Initialize-MachineIdentityCapabilitySource  -Type null `
 -Id 2c91808568c529c60168cca6f90c1313 `
 -Name William Wilson
```

- Convert the resource to JSON
```powershell
$MachineIdentityCapabilitySource | ConvertTo-JSON
```


[[Back to top]](#) 

