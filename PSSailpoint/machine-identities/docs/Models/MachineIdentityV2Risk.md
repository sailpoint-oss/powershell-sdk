---
id: machine-identity-v2-risk
title: MachineIdentityV2Risk
pagination_label: MachineIdentityV2Risk
sidebar_label: MachineIdentityV2Risk
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'MachineIdentityV2Risk', 'MachineIdentityV2Risk'] 
slug: /tools/sdk/powershell/machineidentities/models/machine-identity-v2-risk
tags: ['SDK', 'Software Development Kit', 'MachineIdentityV2Risk', 'MachineIdentityV2Risk']
---


# MachineIdentityV2Risk

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Score** | **Double** | Normalised risk score 0.0-100.0. | [optional] 
**Severity** |  **Enum** [  "CRITICAL",    "HIGH",    "MEDIUM",    "LOW" ] | Risk severity bucket. | [optional] 

## Examples

- Prepare the resource
```powershell
$MachineIdentityV2Risk = Initialize-MachineIdentityV2Risk  -Score 72.5 `
 -Severity HIGH
```

- Convert the resource to JSON
```powershell
$MachineIdentityV2Risk | ConvertTo-JSON
```


[[Back to top]](#) 

