---
id: v2026-create-machine-account-subtype-request
title: CreateMachineAccountSubtypeRequest
pagination_label: CreateMachineAccountSubtypeRequest
sidebar_label: CreateMachineAccountSubtypeRequest
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'CreateMachineAccountSubtypeRequest', 'V2026CreateMachineAccountSubtypeRequest'] 
slug: /tools/sdk/powershell/v2026/models/create-machine-account-subtype-request
tags: ['SDK', 'Software Development Kit', 'CreateMachineAccountSubtypeRequest', 'V2026CreateMachineAccountSubtypeRequest']
---


# CreateMachineAccountSubtypeRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**TechnicalName** | **String** | Technical name of the subtype. | [required]
**DisplayName** | **String** | Display name of the subtype. | [required]
**Description** | **String** | Description of the subtype. | [required]
**Type** | **String** | Type of the subtype. | [optional] 

## Examples

- Prepare the resource
```powershell
$CreateMachineAccountSubtypeRequest = Initialize-V2026CreateMachineAccountSubtypeRequest  -TechnicalName foo `
 -DisplayName Mr Foo `
 -Description fighters `
 -Type MACHINE
```

- Convert the resource to JSON
```powershell
$CreateMachineAccountSubtypeRequest | ConvertTo-JSON
```


[[Back to top]](#) 

