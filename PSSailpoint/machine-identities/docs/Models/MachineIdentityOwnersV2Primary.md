---
id: machine-identity-owners-v2-primary
title: MachineIdentityOwnersV2Primary
pagination_label: MachineIdentityOwnersV2Primary
sidebar_label: MachineIdentityOwnersV2Primary
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'MachineIdentityOwnersV2Primary', 'MachineIdentityOwnersV2Primary'] 
slug: /tools/sdk/powershell/machineidentities/models/machine-identity-owners-v2-primary
tags: ['SDK', 'Software Development Kit', 'MachineIdentityOwnersV2Primary', 'MachineIdentityOwnersV2Primary']
---


# MachineIdentityOwnersV2Primary

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **DtoType** |  | [optional] 
**Id** | **String** | ID of the object to which this reference applies | [optional] 
**Name** | **String** | Human-readable display name of the object to which this reference applies | [optional] 

## Examples

- Prepare the resource
```powershell
$MachineIdentityOwnersV2Primary = Initialize-MachineIdentityOwnersV2Primary  -Type null `
 -Id 2c91808568c529c60168cca6f90c1313 `
 -Name William Wilson
```

- Convert the resource to JSON
```powershell
$MachineIdentityOwnersV2Primary | ConvertTo-JSON
```


[[Back to top]](#) 

