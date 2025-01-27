---
id: v2024-role-insights-entitlement
title: RoleInsightsEntitlement
pagination_label: RoleInsightsEntitlement
sidebar_label: RoleInsightsEntitlement
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'RoleInsightsEntitlement'] 
slug: /tools/sdk/powershell/v2024/models/role-insights-entitlement
tags: ['SDK', 'Software Development Kit', 'RoleInsightsEntitlement']
---


# RoleInsightsEntitlement

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** |  Pointer to **String** | Name of the entitlement | [optional] 
**Id** |  Pointer to **String** | Id of the entitlement | [optional] 
**Description** |  Pointer to **String** | Description for the entitlement | [optional] 
**Source** |  Pointer to **String** | Source or the application for the entitlement | [optional] 
**Attribute** |  Pointer to **String** | Attribute for the entitlement | [optional] 
**Value** |  Pointer to **String** | Attribute value for the entitlement | [optional] 

## Examples

- Prepare the resource
```powershell
$RoleInsightsEntitlement = Initialize-PSSailpoint.V2024RoleInsightsEntitlement  -Name null `
 -Id null `
 -Description null `
 -Source null `
 -Attribute null `
 -Value null
```

- Convert the resource to JSON
```powershell
$RoleInsightsEntitlement | ConvertTo-JSON
```


[[Back to top]](#) 

