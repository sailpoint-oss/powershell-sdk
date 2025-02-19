---
id: beta-role-mining-session-status
title: RoleMiningSessionStatus
pagination_label: RoleMiningSessionStatus
sidebar_label: RoleMiningSessionStatus
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'RoleMiningSessionStatus', 'BetaRoleMiningSessionStatus'] 
slug: /tools/sdk/powershell/beta/models/role-mining-session-status
tags: ['SDK', 'Software Development Kit', 'RoleMiningSessionStatus', 'BetaRoleMiningSessionStatus']
---


# RoleMiningSessionStatus

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**State** | [**RoleMiningSessionState**](role-mining-session-state) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$RoleMiningSessionStatus = Initialize-PSSailpoint.BetaRoleMiningSessionStatus  -State null
$RoleMiningSessionStatus = @"{  "State": "null "}"@
```

- Convert the resource from JSON
```powershell
ConvertFrom-JsonToRoleMiningSessionStatus -Json $RoleMiningSessionStatus
```


[[Back to top]](#) 

