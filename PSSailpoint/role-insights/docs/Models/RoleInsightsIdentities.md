---
id: role-insights-identities
title: RoleInsightsIdentities
pagination_label: RoleInsightsIdentities
sidebar_label: RoleInsightsIdentities
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'RoleInsightsIdentities', 'RoleInsightsIdentities'] 
slug: /tools/sdk/powershell/roleinsights/models/role-insights-identities
tags: ['SDK', 'Software Development Kit', 'RoleInsightsIdentities', 'RoleInsightsIdentities']
---


# RoleInsightsIdentities

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | Id for identity | [optional] 
**Name** | **String** | Name for identity | [optional] 
**Attributes** | **map[string]String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$RoleInsightsIdentities = Initialize-RoleInsightsIdentities  -Id null `
 -Name null `
 -Attributes null
```

- Convert the resource to JSON
```powershell
$RoleInsightsIdentities | ConvertTo-JSON
```


[[Back to top]](#) 

