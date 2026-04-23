---
id: v2026-role-propagation-config-input
title: RolePropagationConfigInput
pagination_label: RolePropagationConfigInput
sidebar_label: RolePropagationConfigInput
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'RolePropagationConfigInput', 'V2026RolePropagationConfigInput'] 
slug: /tools/sdk/powershell/v2026/models/role-propagation-config-input
tags: ['SDK', 'Software Development Kit', 'RolePropagationConfigInput', 'V2026RolePropagationConfigInput']
---


# RolePropagationConfigInput

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Enabled** | **Boolean** | Indicates if the Role Change Propagation process should be enabled for the tenant | [optional] [default to $false]

## Examples

- Prepare the resource
```powershell
$RolePropagationConfigInput = Initialize-V2026RolePropagationConfigInput  -Enabled true
```

- Convert the resource to JSON
```powershell
$RolePropagationConfigInput | ConvertTo-JSON
```


[[Back to top]](#) 

