---
id: machine-identity-aggregation-response-target
title: MachineIdentityAggregationResponseTarget
pagination_label: MachineIdentityAggregationResponseTarget
sidebar_label: MachineIdentityAggregationResponseTarget
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'MachineIdentityAggregationResponseTarget', 'MachineIdentityAggregationResponseTarget'] 
slug: /tools/sdk/powershell/machineidentities/models/machine-identity-aggregation-response-target
tags: ['SDK', 'Software Development Kit', 'MachineIdentityAggregationResponseTarget', 'MachineIdentityAggregationResponseTarget']
---


# MachineIdentityAggregationResponseTarget

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **DtoType** |  | [optional] 
**Id** | **String** | ID of the object to which this reference applies | [optional] 
**Name** | **String** | Human-readable display name of the object to which this reference applies | [optional] 

## Examples

- Prepare the resource
```powershell
$MachineIdentityAggregationResponseTarget = Initialize-MachineIdentityAggregationResponseTarget  -Type null `
 -Id 2c91808568c529c60168cca6f90c1313 `
 -Name William Wilson
```

- Convert the resource to JSON
```powershell
$MachineIdentityAggregationResponseTarget | ConvertTo-JSON
```


[[Back to top]](#) 

