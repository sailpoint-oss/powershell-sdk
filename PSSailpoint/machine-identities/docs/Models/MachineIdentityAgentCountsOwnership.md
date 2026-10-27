---
id: machine-identity-agent-counts-ownership
title: MachineIdentityAgentCountsOwnership
pagination_label: MachineIdentityAgentCountsOwnership
sidebar_label: MachineIdentityAgentCountsOwnership
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'MachineIdentityAgentCountsOwnership', 'MachineIdentityAgentCountsOwnership'] 
slug: /tools/sdk/powershell/machineidentities/models/machine-identity-agent-counts-ownership
tags: ['SDK', 'Software Development Kit', 'MachineIdentityAgentCountsOwnership', 'MachineIdentityAgentCountsOwnership']
---


# MachineIdentityAgentCountsOwnership

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**OwnedAgents** | **Int64** | Number of AI agents that have at least one owner. | [optional] 
**OwnedPercent** | **Int32** | Percentage of AI agents that have at least one owner. | [optional] 

## Examples

- Prepare the resource
```powershell
$MachineIdentityAgentCountsOwnership = Initialize-MachineIdentityAgentCountsOwnership  -OwnedAgents 70 `
 -OwnedPercent 82
```

- Convert the resource to JSON
```powershell
$MachineIdentityAgentCountsOwnership | ConvertTo-JSON
```


[[Back to top]](#) 

