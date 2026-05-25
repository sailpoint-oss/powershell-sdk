---
id: v2026-intel-machine-source
title: IntelMachineSource
pagination_label: IntelMachineSource
sidebar_label: IntelMachineSource
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'IntelMachineSource', 'V2026IntelMachineSource'] 
slug: /tools/sdk/powershell/v2026/models/intel-machine-source
tags: ['SDK', 'Software Development Kit', 'IntelMachineSource', 'V2026IntelMachineSource']
---


# IntelMachineSource

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | Unique identifier of the correlated source in Identity Security Cloud. | [optional] 
**Name** | **String** | Display name of the source as configured in Identity Security Cloud. | [optional] 
**Type** | **String** | Connector or source type classification for the backing system. | [optional] 

## Examples

- Prepare the resource
```powershell
$IntelMachineSource = Initialize-V2026IntelMachineSource  -Id 2c9180835d2e5168015d32f890301e89 `
 -Name Active Directory `
 -Type LDAP
```

- Convert the resource to JSON
```powershell
$IntelMachineSource | ConvertTo-JSON
```


[[Back to top]](#) 

