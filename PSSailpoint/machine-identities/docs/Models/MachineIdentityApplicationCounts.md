---
id: machine-identity-application-counts
title: MachineIdentityApplicationCounts
pagination_label: MachineIdentityApplicationCounts
sidebar_label: MachineIdentityApplicationCounts
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'MachineIdentityApplicationCounts', 'MachineIdentityApplicationCounts'] 
slug: /tools/sdk/powershell/machineidentities/models/machine-identity-application-counts
tags: ['SDK', 'Software Development Kit', 'MachineIdentityApplicationCounts', 'MachineIdentityApplicationCounts']
---


# MachineIdentityApplicationCounts

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ApplicationCount** | **Int64** | Total number of applications. | [optional] 
**UnsanctionedApplicationCount** | **Int64** | Number of applications that are not sanctioned. | [optional] 
**Discovered** | [**MachineIdentityDiscoveredCounts**](machine-identity-discovered-counts) |  | [optional] 
**RiskSeverity** | [**MachineIdentityRiskSeverityCounts**](machine-identity-risk-severity-counts) |  | [optional] 
**Ownership** | [**MachineIdentityApplicationCountsOwnership**](machine-identity-application-counts-ownership) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$MachineIdentityApplicationCounts = Initialize-MachineIdentityApplicationCounts  -ApplicationCount 120 `
 -UnsanctionedApplicationCount 9 `
 -Discovered null `
 -RiskSeverity null `
 -Ownership null
```

- Convert the resource to JSON
```powershell
$MachineIdentityApplicationCounts | ConvertTo-JSON
```


[[Back to top]](#) 

