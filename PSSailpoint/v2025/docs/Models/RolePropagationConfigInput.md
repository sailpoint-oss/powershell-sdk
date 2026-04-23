---
id: v2025-role-propagation-config-input
title: RolePropagationConfigInput
pagination_label: RolePropagationConfigInput
sidebar_label: RolePropagationConfigInput
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'RolePropagationConfigInput', 'V2025RolePropagationConfigInput'] 
slug: /tools/sdk/powershell/v2025/models/role-propagation-config-input
tags: ['SDK', 'Software Development Kit', 'RolePropagationConfigInput', 'V2025RolePropagationConfigInput']
---


# RolePropagationConfigInput

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Enabled** | **Boolean** | Indicates if the Role Change Propagation process should be enabled for the tenant | [optional] [default to $false]

## Examples

- Prepare the resource
```powershell
$RolePropagationConfigInput = Initialize-V2025RolePropagationConfigInput  -Enabled true
```

- Convert the resource to JSON
```powershell
$RolePropagationConfigInput | ConvertTo-JSON
```


[[Back to top]](#) 

