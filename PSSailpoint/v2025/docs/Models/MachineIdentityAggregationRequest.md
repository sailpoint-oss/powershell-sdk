---
id: v2025-machine-identity-aggregation-request
title: MachineIdentityAggregationRequest
pagination_label: MachineIdentityAggregationRequest
sidebar_label: MachineIdentityAggregationRequest
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'MachineIdentityAggregationRequest', 'V2025MachineIdentityAggregationRequest'] 
slug: /tools/sdk/powershell/v2025/models/machine-identity-aggregation-request
tags: ['SDK', 'Software Development Kit', 'MachineIdentityAggregationRequest', 'V2025MachineIdentityAggregationRequest']
---


# MachineIdentityAggregationRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**DatasetIds** | **[]String** | List of dataset Ids to aggregate machine identities | [required]
**DisableOptimization** | **Boolean** | Flag to disable optimization for the aggregation. Defaults to false when not provided. When set to true, it disables aggregation optimizations and may increase processing time. | [optional] [default to $false]

## Examples

- Prepare the resource
```powershell
$MachineIdentityAggregationRequest = Initialize-V2025MachineIdentityAggregationRequest  -DatasetIds null `
 -DisableOptimization false
```

- Convert the resource to JSON
```powershell
$MachineIdentityAggregationRequest | ConvertTo-JSON
```


[[Back to top]](#) 

