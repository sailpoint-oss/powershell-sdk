---
id: v2026-role-mining-potential-role-export-request
title: RoleMiningPotentialRoleExportRequest
pagination_label: RoleMiningPotentialRoleExportRequest
sidebar_label: RoleMiningPotentialRoleExportRequest
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'RoleMiningPotentialRoleExportRequest', 'V2026RoleMiningPotentialRoleExportRequest'] 
slug: /tools/sdk/powershell/v2026/models/role-mining-potential-role-export-request
tags: ['SDK', 'Software Development Kit', 'RoleMiningPotentialRoleExportRequest', 'V2026RoleMiningPotentialRoleExportRequest']
---


# RoleMiningPotentialRoleExportRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**MinEntitlementPopularity** | **Int32** | The minimum popularity among identities in the role which an entitlement must have to be included in the report | [optional] 
**IncludeCommonAccess** | **Boolean** | If false, do not include entitlements that are highly popular among the entire orginization | [optional] 

## Examples

- Prepare the resource
```powershell
$RoleMiningPotentialRoleExportRequest = Initialize-V2026RoleMiningPotentialRoleExportRequest  -MinEntitlementPopularity 0 `
 -IncludeCommonAccess true
```

- Convert the resource to JSON
```powershell
$RoleMiningPotentialRoleExportRequest | ConvertTo-JSON
```


[[Back to top]](#) 

