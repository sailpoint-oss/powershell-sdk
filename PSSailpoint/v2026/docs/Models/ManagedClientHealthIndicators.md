---
id: v2026-managed-client-health-indicators
title: ManagedClientHealthIndicators
pagination_label: ManagedClientHealthIndicators
sidebar_label: ManagedClientHealthIndicators
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'ManagedClientHealthIndicators', 'V2026ManagedClientHealthIndicators'] 
slug: /tools/sdk/powershell/v2026/models/managed-client-health-indicators
tags: ['SDK', 'Software Development Kit', 'ManagedClientHealthIndicators', 'V2026ManagedClientHealthIndicators']
---


# ManagedClientHealthIndicators

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Body** | [**ManagedClientHealthIndicatorsBody**](managed-client-health-indicators-body) |  | [required]
**Status** |  **Enum** [  "NORMAL",    "UNDEFINED",    "WARNING",    "ERROR",    "FAILED" ] | Top-level status of the Managed Client | [required]
**Type** |  **Enum** [  "VA",    "CCG" ] | Type of the Managed Client | [required]
**Timestamp** | **System.DateTime** | Timestamp when this report was generated | [required]

## Examples

- Prepare the resource
```powershell
$ManagedClientHealthIndicators = Initialize-V2026ManagedClientHealthIndicators  -Body null `
 -Status NORMAL `
 -Type VA `
 -Timestamp 2025-08-06T07:35:28.722300Z
```

- Convert the resource to JSON
```powershell
$ManagedClientHealthIndicators | ConvertTo-JSON
```


[[Back to top]](#) 

