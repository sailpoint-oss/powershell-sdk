---
id: machine-account-request-async-result
title: MachineAccountRequestAsyncResult
pagination_label: MachineAccountRequestAsyncResult
sidebar_label: MachineAccountRequestAsyncResult
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'MachineAccountRequestAsyncResult', 'MachineAccountRequestAsyncResult'] 
slug: /tools/sdk/powershell/machineaccounts/models/machine-account-request-async-result
tags: ['SDK', 'Software Development Kit', 'MachineAccountRequestAsyncResult', 'MachineAccountRequestAsyncResult']
---


# MachineAccountRequestAsyncResult

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AccountRequestId** | **String** | ID of the task that tracks the account request. | [required]

## Examples

- Prepare the resource
```powershell
$MachineAccountRequestAsyncResult = Initialize-MachineAccountRequestAsyncResult  -AccountRequestId 2d81808474683da6017468693c260196
```

- Convert the resource to JSON
```powershell
$MachineAccountRequestAsyncResult | ConvertTo-JSON
```


[[Back to top]](#) 

