---
id: machine-identity-risk-severity-counts
title: MachineIdentityRiskSeverityCounts
pagination_label: MachineIdentityRiskSeverityCounts
sidebar_label: MachineIdentityRiskSeverityCounts
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'MachineIdentityRiskSeverityCounts', 'MachineIdentityRiskSeverityCounts'] 
slug: /tools/sdk/powershell/machineidentities/models/machine-identity-risk-severity-counts
tags: ['SDK', 'Software Development Kit', 'MachineIdentityRiskSeverityCounts', 'MachineIdentityRiskSeverityCounts']
---


# MachineIdentityRiskSeverityCounts

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Critical** | **Int64** | Number of machine identities with a CRITICAL risk severity. | [optional] 
**High** | **Int64** | Number of machine identities with a HIGH risk severity. | [optional] 
**Medium** | **Int64** | Number of machine identities with a MEDIUM risk severity. | [optional] 
**Low** | **Int64** | Number of machine identities with a LOW risk severity. | [optional] 
**Unknown** | **Int64** | Number of machine identities that have no risk severity. This value is `null` unless unclassified risk severity counting is enabled for the tenant. Version 1 of the API always returns `null`. | [optional] 

## Examples

- Prepare the resource
```powershell
$MachineIdentityRiskSeverityCounts = Initialize-MachineIdentityRiskSeverityCounts  -Critical 3 `
 -High 12 `
 -Medium 25 `
 -Low 40 `
 -Unknown 5
```

- Convert the resource to JSON
```powershell
$MachineIdentityRiskSeverityCounts | ConvertTo-JSON
```


[[Back to top]](#) 

