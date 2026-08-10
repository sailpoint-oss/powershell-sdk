---
id: intelmachineuserentitlement
title: Intelmachineuserentitlement
pagination_label: Intelmachineuserentitlement
sidebar_label: Intelmachineuserentitlement
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'Intelmachineuserentitlement', 'Intelmachineuserentitlement'] 
slug: /tools/sdk/powershell/intelligence/models/intelmachineuserentitlement
tags: ['SDK', 'Software Development Kit', 'Intelmachineuserentitlement', 'Intelmachineuserentitlement']
---


# Intelmachineuserentitlement

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**SourceId** | **String** | Source identifier for the entitlement. | [required]
**EntitlementId** | **String** | Entitlement identifier on the source. | [required]
**DisplayName** | **String** | Display name for the entitlement. | [required]
**Source** | [**Intelmachinesourcewire**](intelmachinesourcewire) | Resolved source metadata when available upstream. | [optional] 

## Examples

- Prepare the resource
```powershell
$Intelmachineuserentitlement = Initialize-Intelmachineuserentitlement  -SourceId 60de165099e649cb828553a5e8510fc4 `
 -EntitlementId ent-001 `
 -DisplayName Example_Entitlement `
 -Source null
```

- Convert the resource to JSON
```powershell
$Intelmachineuserentitlement | ConvertTo-JSON
```


[[Back to top]](#) 

