---
id: machine-account-v2-all-of-subtype
title: MachineAccountV2AllOfSubtype
pagination_label: MachineAccountV2AllOfSubtype
sidebar_label: MachineAccountV2AllOfSubtype
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'MachineAccountV2AllOfSubtype', 'MachineAccountV2AllOfSubtype'] 
slug: /tools/sdk/powershell/machineaccounts/models/machine-account-v2-all-of-subtype
tags: ['SDK', 'Software Development Kit', 'MachineAccountV2AllOfSubtype', 'MachineAccountV2AllOfSubtype']
---


# MachineAccountV2AllOfSubtype

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | ID of the subtype. | [optional] 
**TechnicalName** | **String** | The technical name of the subtype. | [optional] 
**DisplayName** | **String** | The display name of the subtype. | [optional] 

## Examples

- Prepare the resource
```powershell
$MachineAccountV2AllOfSubtype = Initialize-MachineAccountV2AllOfSubtype  -Id 43bdd144-4b17-4fce-a744-17c7fd3e717b `
 -TechnicalName serviceAccount `
 -DisplayName Service Account
```

- Convert the resource to JSON
```powershell
$MachineAccountV2AllOfSubtype | ConvertTo-JSON
```


[[Back to top]](#) 

