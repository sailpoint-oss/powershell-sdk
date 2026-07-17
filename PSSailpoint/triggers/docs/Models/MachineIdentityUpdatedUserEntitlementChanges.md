---
id: machine-identity-updated-user-entitlement-changes
title: MachineIdentityUpdatedUserEntitlementChanges
pagination_label: MachineIdentityUpdatedUserEntitlementChanges
sidebar_label: MachineIdentityUpdatedUserEntitlementChanges
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'MachineIdentityUpdatedUserEntitlementChanges', 'MachineIdentityUpdatedUserEntitlementChanges'] 
slug: /tools/sdk/powershell/triggers/models/machine-identity-updated-user-entitlement-changes
tags: ['SDK', 'Software Development Kit', 'MachineIdentityUpdatedUserEntitlementChanges', 'MachineIdentityUpdatedUserEntitlementChanges']
---


# MachineIdentityUpdatedUserEntitlementChanges

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AttributeName** | **String** | Name of the attribute that changed. | [optional] 
**Added** | **[]MachineIdentityUserEntitlements** | User entitlements that were added. | [optional] 
**Removed** | **[]MachineIdentityUserEntitlements** | User entitlements that were removed. | [optional] 

## Examples

- Prepare the resource
```powershell
$MachineIdentityUpdatedUserEntitlementChanges = Initialize-MachineIdentityUpdatedUserEntitlementChanges  -AttributeName userEntitlements `
 -Added null `
 -Removed null
```

- Convert the resource to JSON
```powershell
$MachineIdentityUpdatedUserEntitlementChanges | ConvertTo-JSON
```


[[Back to top]](#) 

