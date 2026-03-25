---
id: v2026-role-mining-session-status
title: RoleMiningSessionStatus
pagination_label: RoleMiningSessionStatus
sidebar_label: RoleMiningSessionStatus
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'RoleMiningSessionStatus', 'V2026RoleMiningSessionStatus'] 
slug: /tools/sdk/powershell/v2026/models/role-mining-session-status
tags: ['SDK', 'Software Development Kit', 'RoleMiningSessionStatus', 'V2026RoleMiningSessionStatus']
---


# RoleMiningSessionStatus

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**State** | [**RoleMiningSessionState**](role-mining-session-state) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$RoleMiningSessionStatus = Initialize-V2026RoleMiningSessionStatus  -State null
```

- Convert the resource to JSON
```powershell
$RoleMiningSessionStatus | ConvertTo-JSON
```


[[Back to top]](#) 

