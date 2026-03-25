---
id: v2026-machine-identity-updated-user-entitlement-changes
title: MachineIdentityUpdatedUserEntitlementChanges
pagination_label: MachineIdentityUpdatedUserEntitlementChanges
sidebar_label: MachineIdentityUpdatedUserEntitlementChanges
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'MachineIdentityUpdatedUserEntitlementChanges', 'V2026MachineIdentityUpdatedUserEntitlementChanges'] 
slug: /tools/sdk/powershell/v2026/models/machine-identity-updated-user-entitlement-changes
tags: ['SDK', 'Software Development Kit', 'MachineIdentityUpdatedUserEntitlementChanges', 'V2026MachineIdentityUpdatedUserEntitlementChanges']
---


# MachineIdentityUpdatedUserEntitlementChanges

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AttributeName** | **String** | Name of the attribute that changed. | [optional] 
**Added** | [**[]MachineIdentityUserEntitlements**](machine-identity-user-entitlements) | User entitlements that were added. | [optional] 
**Removed** | [**[]MachineIdentityUserEntitlements**](machine-identity-user-entitlements) | User entitlements that were removed. | [optional] 

## Examples

- Prepare the resource
```powershell
$MachineIdentityUpdatedUserEntitlementChanges = Initialize-V2026MachineIdentityUpdatedUserEntitlementChanges  -AttributeName userEntitlements `
 -Added null `
 -Removed null
```

- Convert the resource to JSON
```powershell
$MachineIdentityUpdatedUserEntitlementChanges | ConvertTo-JSON
```


[[Back to top]](#) 

