---
id: machine-account-all-of-risk
title: MachineAccountAllOfRisk
pagination_label: MachineAccountAllOfRisk
sidebar_label: MachineAccountAllOfRisk
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'MachineAccountAllOfRisk', 'MachineAccountAllOfRisk'] 
slug: /tools/sdk/powershell/machineaccounts/models/machine-account-all-of-risk
tags: ['SDK', 'Software Development Kit', 'MachineAccountAllOfRisk', 'MachineAccountAllOfRisk']
---


# MachineAccountAllOfRisk

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Score** | **Double** | Risk score. Null for Entro-only severity. | [optional] 
**Severity** |  **Enum** [  "UNKNOWN",    "LOW",    "MEDIUM",    "HIGH",    "CRITICAL" ] | Risk severity. A null stored severity can render as UNKNOWN when that behavior is enabled. | [optional] 

## Examples

- Prepare the resource
```powershell
$MachineAccountAllOfRisk = Initialize-MachineAccountAllOfRisk  -Score 72.5 `
 -Severity HIGH
```

- Convert the resource to JSON
```powershell
$MachineAccountAllOfRisk | ConvertTo-JSON
```


[[Back to top]](#) 

