---
id: beta-role-mining-identity
title: RoleMiningIdentity
pagination_label: RoleMiningIdentity
sidebar_label: RoleMiningIdentity
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'RoleMiningIdentity', 'BetaRoleMiningIdentity'] 
slug: /tools/sdk/powershell/beta/models/role-mining-identity
tags: ['SDK', 'Software Development Kit', 'RoleMiningIdentity', 'BetaRoleMiningIdentity']
---


# RoleMiningIdentity

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | Id of the identity | [optional] 
**Name** | **String** | Name of the identity | [optional] 
**Attributes** | **map[string]String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$RoleMiningIdentity = Initialize-PSSailpoint.BetaRoleMiningIdentity  -Id null `
 -Name null `
 -Attributes null
$RoleMiningIdentity = @"{  "Id": "null", "Name": "null", "Attributes": "null "}"@
```

- Convert the resource from JSON
```powershell
ConvertFrom-JsonToRoleMiningIdentity -Json $RoleMiningIdentity
```


[[Back to top]](#) 

