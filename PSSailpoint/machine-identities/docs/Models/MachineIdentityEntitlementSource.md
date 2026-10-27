---
id: machine-identity-entitlement-source
title: MachineIdentityEntitlementSource
pagination_label: MachineIdentityEntitlementSource
sidebar_label: MachineIdentityEntitlementSource
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'MachineIdentityEntitlementSource', 'MachineIdentityEntitlementSource'] 
slug: /tools/sdk/powershell/machineidentities/models/machine-identity-entitlement-source
tags: ['SDK', 'Software Development Kit', 'MachineIdentityEntitlementSource', 'MachineIdentityEntitlementSource']
---


# MachineIdentityEntitlementSource

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **DtoType** |  | [optional] 
**Id** | **String** | ID of the object to which this reference applies | [optional] 
**Name** | **String** | Human-readable display name of the object to which this reference applies | [optional] 

## Examples

- Prepare the resource
```powershell
$MachineIdentityEntitlementSource = Initialize-MachineIdentityEntitlementSource  -Type null `
 -Id 2c91808568c529c60168cca6f90c1313 `
 -Name William Wilson
```

- Convert the resource to JSON
```powershell
$MachineIdentityEntitlementSource | ConvertTo-JSON
```


[[Back to top]](#) 

