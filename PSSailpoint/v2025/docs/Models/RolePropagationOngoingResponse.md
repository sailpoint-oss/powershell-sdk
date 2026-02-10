---
id: v2025-role-propagation-ongoing-response
title: RolePropagationOngoingResponse
pagination_label: RolePropagationOngoingResponse
sidebar_label: RolePropagationOngoingResponse
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'RolePropagationOngoingResponse', 'V2025RolePropagationOngoingResponse'] 
slug: /tools/sdk/powershell/v2025/models/role-propagation-ongoing-response
tags: ['SDK', 'Software Development Kit', 'RolePropagationOngoingResponse', 'V2025RolePropagationOngoingResponse']
---


# RolePropagationOngoingResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**IsRunning** | **Boolean** | Indicates if the role propagation process is currently running on the tenant | [optional] [default to $false]
**RolePropagationDetails** | [**RolePropagationOngoingResponseRolePropagationDetails**](role-propagation-ongoing-response-role-propagation-details) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$RolePropagationOngoingResponse = Initialize-V2025RolePropagationOngoingResponse  -IsRunning true `
 -RolePropagationDetails null
```

- Convert the resource to JSON
```powershell
$RolePropagationOngoingResponse | ConvertTo-JSON
```


[[Back to top]](#) 

