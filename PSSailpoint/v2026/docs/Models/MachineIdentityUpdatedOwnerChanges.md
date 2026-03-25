---
id: v2026-machine-identity-updated-owner-changes
title: MachineIdentityUpdatedOwnerChanges
pagination_label: MachineIdentityUpdatedOwnerChanges
sidebar_label: MachineIdentityUpdatedOwnerChanges
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'MachineIdentityUpdatedOwnerChanges', 'V2026MachineIdentityUpdatedOwnerChanges'] 
slug: /tools/sdk/powershell/v2026/models/machine-identity-updated-owner-changes
tags: ['SDK', 'Software Development Kit', 'MachineIdentityUpdatedOwnerChanges', 'V2026MachineIdentityUpdatedOwnerChanges']
---


# MachineIdentityUpdatedOwnerChanges

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AttributeName** | **String** | Name of the attribute that changed. | [optional] 
**Added** | [**[]MachineIdentityOwnerReference**](machine-identity-owner-reference) | Owners that were added. | [optional] 
**Removed** | [**[]MachineIdentityOwnerReference**](machine-identity-owner-reference) | Owners that were removed. | [optional] 

## Examples

- Prepare the resource
```powershell
$MachineIdentityUpdatedOwnerChanges = Initialize-V2026MachineIdentityUpdatedOwnerChanges  -AttributeName owners `
 -Added null `
 -Removed null
```

- Convert the resource to JSON
```powershell
$MachineIdentityUpdatedOwnerChanges | ConvertTo-JSON
```


[[Back to top]](#) 

