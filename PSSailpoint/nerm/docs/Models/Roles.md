---
id: nerm-roles
title: Roles
pagination_label: Roles
sidebar_label: Roles
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'Roles', 'NERMRoles'] 
slug: /tools/sdk/powershell/nerm/models/roles
tags: ['SDK', 'Software Development Kit', 'Roles', 'NERMRoles']
---


# Roles

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Roles** | [**[]Role**](role) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$Roles = Initialize-NERMRoles  -Roles null
```

- Convert the resource to JSON
```powershell
$Roles | ConvertTo-JSON
```


[[Back to top]](#) 

