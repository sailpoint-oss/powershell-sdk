---
id: v2026-source-management-workgroup
title: SourceManagementWorkgroup
pagination_label: SourceManagementWorkgroup
sidebar_label: SourceManagementWorkgroup
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'SourceManagementWorkgroup', 'V2026SourceManagementWorkgroup'] 
slug: /tools/sdk/powershell/v2026/models/source-management-workgroup
tags: ['SDK', 'Software Development Kit', 'SourceManagementWorkgroup', 'V2026SourceManagementWorkgroup']
---


# SourceManagementWorkgroup

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** |  **Enum** [  "GOVERNANCE_GROUP" ] | Type of object being referenced. | [optional] 
**Id** | **String** | Management workgroup ID. | [optional] 
**Name** | **String** | Management workgroup's human-readable display name. | [optional] 

## Examples

- Prepare the resource
```powershell
$SourceManagementWorkgroup = Initialize-V2026SourceManagementWorkgroup  -Type GOVERNANCE_GROUP `
 -Id 2c91808568c529c60168cca6f90c2222 `
 -Name My Management Workgroup
```

- Convert the resource to JSON
```powershell
$SourceManagementWorkgroup | ConvertTo-JSON
```


[[Back to top]](#) 

