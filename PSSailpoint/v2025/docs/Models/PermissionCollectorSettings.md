---
id: v2025-permission-collector-settings
title: PermissionCollectorSettings
pagination_label: PermissionCollectorSettings
sidebar_label: PermissionCollectorSettings
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'PermissionCollectorSettings', 'V2025PermissionCollectorSettings'] 
slug: /tools/sdk/powershell/v2025/models/permission-collector-settings
tags: ['SDK', 'Software Development Kit', 'PermissionCollectorSettings', 'V2025PermissionCollectorSettings']
---


# PermissionCollectorSettings

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**IsEnabled** | **Boolean** | Indicates whether the feature or configuration is enabled. | [optional] [default to $false]
**ClusterId** | **String** | The identifier of the cluster associated with this configuration, if applicable. | [optional] 
**AnalyzeUniquePermissions** | **Boolean** | Indicates whether unique permissions should be analyzed for resources. | [optional] [default to $false]
**CalculateEffectivePermissions** | **Boolean** | Indicates whether effective permissions should be calculated. | [optional] [default to $false]
**CalculateRiskiestPermissions** | **Boolean** | Indicates whether riskiest permissions should be calculated. | [optional] [default to $false]
**EffectivePermissionsSource** | **String** | Source for effective permissions calculation. | [optional] 

## Examples

- Prepare the resource
```powershell
$PermissionCollectorSettings = Initialize-V2025PermissionCollectorSettings  -IsEnabled true `
 -ClusterId cluster-001 `
 -AnalyzeUniquePermissions true `
 -CalculateEffectivePermissions true `
 -CalculateRiskiestPermissions false `
 -EffectivePermissionsSource S3
```

- Convert the resource to JSON
```powershell
$PermissionCollectorSettings | ConvertTo-JSON
```


[[Back to top]](#) 

