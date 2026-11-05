---
id: access-profile-entitlement-privilege-level
title: AccessProfileEntitlementPrivilegeLevel
pagination_label: AccessProfileEntitlementPrivilegeLevel
sidebar_label: AccessProfileEntitlementPrivilegeLevel
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'AccessProfileEntitlementPrivilegeLevel', 'AccessProfileEntitlementPrivilegeLevel'] 
slug: /tools/sdk/powershell/accessprofiles/models/access-profile-entitlement-privilege-level
tags: ['SDK', 'Software Development Kit', 'AccessProfileEntitlementPrivilegeLevel', 'AccessProfileEntitlementPrivilegeLevel']
---


# AccessProfileEntitlementPrivilegeLevel

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Direct** |  **Enum** [  "HIGH",    "LOW",    "MEDIUM",    "NONE" ] | Direct privilege level assigned to the entitlement | [optional] 
**SetBy** | **String** | User or process that set the privilege level | [optional] 
**SetByType** |  **Enum** [  "OVERRIDE",    "CUSTOM_CRITERIA",    "CONNECTOR_CRITERIA",    "SINGLE_LEVEL_CRITERIA" ] | Method by which the privilege level was set | [optional] 
**Inherited** |  **Enum** [  "HIGH",    "LOW",    "MEDIUM",    "NONE" ] | Inherited privilege level on the entitlement, if any | [optional] 
**Effective** |  **Enum** [  "HIGH",    "LOW",    "MEDIUM",    "NONE" ] | Effective privilege level assigned to the entitlement | [optional] 

## Examples

- Prepare the resource
```powershell
$AccessProfileEntitlementPrivilegeLevel = Initialize-AccessProfileEntitlementPrivilegeLevel  -Direct HIGH `
 -SetBy SAILPOINT_MIGRATION `
 -SetByType OVERRIDE `
 -Inherited LOW `
 -Effective HIGH
```

- Convert the resource to JSON
```powershell
$AccessProfileEntitlementPrivilegeLevel | ConvertTo-JSON
```


[[Back to top]](#) 

