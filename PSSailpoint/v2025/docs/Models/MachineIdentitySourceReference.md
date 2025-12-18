---
id: v2025-machine-identity-source-reference
title: MachineIdentitySourceReference
pagination_label: MachineIdentitySourceReference
sidebar_label: MachineIdentitySourceReference
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'MachineIdentitySourceReference', 'V2025MachineIdentitySourceReference'] 
slug: /tools/sdk/powershell/v2025/models/machine-identity-source-reference
tags: ['SDK', 'Software Development Kit', 'MachineIdentitySourceReference', 'V2025MachineIdentitySourceReference']
---


# MachineIdentitySourceReference

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** | Source Type. | [required]
**Id** | **String** | Unique identifier. | [required]
**Name** | **String** | Display name. | [required]

## Examples

- Prepare the resource
```powershell
$MachineIdentitySourceReference = Initialize-V2025MachineIdentitySourceReference  -Type SOURCE `
 -Id c0201251a6ce4d268aba536cdd60a7f2 `
 -Name IdentityNow
```

- Convert the resource to JSON
```powershell
$MachineIdentitySourceReference | ConvertTo-JSON
```


[[Back to top]](#) 

