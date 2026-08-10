---
id: intelmachineaccountsslice
title: Intelmachineaccountsslice
pagination_label: Intelmachineaccountsslice
sidebar_label: Intelmachineaccountsslice
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'Intelmachineaccountsslice', 'Intelmachineaccountsslice'] 
slug: /tools/sdk/powershell/intelligence/models/intelmachineaccountsslice
tags: ['SDK', 'Software Development Kit', 'Intelmachineaccountsslice', 'Intelmachineaccountsslice']
---


# Intelmachineaccountsslice

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Items** | [**[]Intelmachineaccountwire**](intelmachineaccountwire) | Machine account rows correlated to the non-human identity. | [required]

## Examples

- Prepare the resource
```powershell
$Intelmachineaccountsslice = Initialize-Intelmachineaccountsslice  -Items null
```

- Convert the resource to JSON
```powershell
$Intelmachineaccountsslice | ConvertTo-JSON
```


[[Back to top]](#) 

