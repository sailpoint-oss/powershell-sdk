---
id: v2026-entitlement-ref
title: EntitlementRef
pagination_label: EntitlementRef
sidebar_label: EntitlementRef
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'EntitlementRef', 'V2026EntitlementRef'] 
slug: /tools/sdk/powershell/v2026/models/entitlement-ref
tags: ['SDK', 'Software Development Kit', 'EntitlementRef', 'V2026EntitlementRef']
---


# EntitlementRef

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** |  **Enum** [  "ENTITLEMENT" ] | Entitlement's DTO type. | [optional] 
**Id** | **String** | Entitlement's ID. | [optional] 
**Name** | **String** | Entitlement's display name. | [optional] 

## Examples

- Prepare the resource
```powershell
$EntitlementRef = Initialize-V2026EntitlementRef  -Type ENTITLEMENT `
 -Id 2c91809773dee32014e13e122092014e `
 -Name CN=entitlement.490efde5,OU=OrgCo,OU=ServiceDept,DC=HQAD,DC=local
```

- Convert the resource to JSON
```powershell
$EntitlementRef | ConvertTo-JSON
```


[[Back to top]](#) 

