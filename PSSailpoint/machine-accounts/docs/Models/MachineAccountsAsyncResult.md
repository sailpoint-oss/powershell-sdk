---
id: machine-accounts-async-result
title: MachineAccountsAsyncResult
pagination_label: MachineAccountsAsyncResult
sidebar_label: MachineAccountsAsyncResult
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'MachineAccountsAsyncResult', 'MachineAccountsAsyncResult'] 
slug: /tools/sdk/powershell/machineaccounts/models/machine-accounts-async-result
tags: ['SDK', 'Software Development Kit', 'MachineAccountsAsyncResult', 'MachineAccountsAsyncResult']
---


# MachineAccountsAsyncResult

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | ID of the task. | [required]

## Examples

- Prepare the resource
```powershell
$MachineAccountsAsyncResult = Initialize-MachineAccountsAsyncResult  -Id 2c91808474683da6017468693c260195
```

- Convert the resource to JSON
```powershell
$MachineAccountsAsyncResult | ConvertTo-JSON
```


[[Back to top]](#) 

