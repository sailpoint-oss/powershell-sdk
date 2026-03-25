---
id: v2026-role-propagation-status-response-launched-by
title: RolePropagationStatusResponseLaunchedBy
pagination_label: RolePropagationStatusResponseLaunchedBy
sidebar_label: RolePropagationStatusResponseLaunchedBy
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'RolePropagationStatusResponseLaunchedBy', 'V2026RolePropagationStatusResponseLaunchedBy'] 
slug: /tools/sdk/powershell/v2026/models/role-propagation-status-response-launched-by
tags: ['SDK', 'Software Development Kit', 'RolePropagationStatusResponseLaunchedBy', 'V2026RolePropagationStatusResponseLaunchedBy']
---


# RolePropagationStatusResponseLaunchedBy

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** |  **Enum** [  "IDENTITY" ] | DTO type of the identity who launched the Role Propagation process. | [optional] 
**Id** | **String** | ID of the identity who launched the Role Propagation process. | [optional] 
**Name** | **String** | Name of the identity who launched the Role Propagation process. | [optional] 

## Examples

- Prepare the resource
```powershell
$RolePropagationStatusResponseLaunchedBy = Initialize-V2026RolePropagationStatusResponseLaunchedBy  -Type IDENTITY `
 -Id 2c7180a46faadee4016fb4e018c20648 `
 -Name William Wilson
```

- Convert the resource to JSON
```powershell
$RolePropagationStatusResponseLaunchedBy | ConvertTo-JSON
```


[[Back to top]](#) 

