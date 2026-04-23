---
id: v2025-role-propagation-config-response
title: RolePropagationConfigResponse
pagination_label: RolePropagationConfigResponse
sidebar_label: RolePropagationConfigResponse
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'RolePropagationConfigResponse', 'V2025RolePropagationConfigResponse'] 
slug: /tools/sdk/powershell/v2025/models/role-propagation-config-response
tags: ['SDK', 'Software Development Kit', 'RolePropagationConfigResponse', 'V2025RolePropagationConfigResponse']
---


# RolePropagationConfigResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Enabled** | **Boolean** | Indicates if the Role Change Propagation process is enabled for the tenant | [optional] [default to $false]
**EnabledDate** | **System.DateTime** | The time when Role Change Propagation Process was last enabled on the tenant | [optional] 
**CreatedDate** | **System.DateTime** | The time when Role Change Propagation Configuration was first created for the tenant | [optional] 
**ModifiedDate** | **System.DateTime** | The time when Role Change Propagation Config was updated on the tenant | [optional] 

## Examples

- Prepare the resource
```powershell
$RolePropagationConfigResponse = Initialize-V2025RolePropagationConfigResponse  -Enabled true `
 -EnabledDate 2026-01-27T08:07:20Z `
 -CreatedDate 2025-02-18T20:20:36Z `
 -ModifiedDate 2026-01-27T08:07:20Z
```

- Convert the resource to JSON
```powershell
$RolePropagationConfigResponse | ConvertTo-JSON
```


[[Back to top]](#) 

