---
id: machine-account-delete-request
title: MachineAccountDeleteRequest
pagination_label: MachineAccountDeleteRequest
sidebar_label: MachineAccountDeleteRequest
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'MachineAccountDeleteRequest', 'MachineAccountDeleteRequest'] 
slug: /tools/sdk/powershell/machineaccounts/models/machine-account-delete-request
tags: ['SDK', 'Software Development Kit', 'MachineAccountDeleteRequest', 'MachineAccountDeleteRequest']
---


# MachineAccountDeleteRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Comments** | **String** | Comments about the deletion request. Depending on the tenant's account deletion approval settings, comments can be required. | [optional] 

## Examples

- Prepare the resource
```powershell
$MachineAccountDeleteRequest = Initialize-MachineAccountDeleteRequest  -Comments This machine account is no longer used.
```

- Convert the resource to JSON
```powershell
$MachineAccountDeleteRequest | ConvertTo-JSON
```


[[Back to top]](#) 

