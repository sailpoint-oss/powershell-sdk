---
id: managed-client-health-indicators-body-health-indicators
title: ManagedClientHealthIndicatorsBodyHealthIndicators
pagination_label: ManagedClientHealthIndicatorsBodyHealthIndicators
sidebar_label: ManagedClientHealthIndicatorsBodyHealthIndicators
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'ManagedClientHealthIndicatorsBodyHealthIndicators', 'ManagedClientHealthIndicatorsBodyHealthIndicators'] 
slug: /tools/sdk/powershell/managedclients/models/managed-client-health-indicators-body-health-indicators
tags: ['SDK', 'Software Development Kit', 'ManagedClientHealthIndicatorsBodyHealthIndicators', 'ManagedClientHealthIndicatorsBodyHealthIndicators']
---


# ManagedClientHealthIndicatorsBodyHealthIndicators

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Container** | [**HealthIndicatorCategory**](health-indicator-category) |  | [optional] 
**Memory** | [**HealthIndicatorCategory**](health-indicator-category) |  | [optional] 
**Cpu** | [**HealthIndicatorCategory**](health-indicator-category) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ManagedClientHealthIndicatorsBodyHealthIndicators = Initialize-ManagedClientHealthIndicatorsBodyHealthIndicators  -Container null `
 -Memory null `
 -Cpu null
```

- Convert the resource to JSON
```powershell
$ManagedClientHealthIndicatorsBodyHealthIndicators | ConvertTo-JSON
```


[[Back to top]](#) 

