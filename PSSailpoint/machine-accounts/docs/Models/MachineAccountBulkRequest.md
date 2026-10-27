---
id: machine-account-bulk-request
title: MachineAccountBulkRequest
pagination_label: MachineAccountBulkRequest
sidebar_label: MachineAccountBulkRequest
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'MachineAccountBulkRequest', 'MachineAccountBulkRequest'] 
slug: /tools/sdk/powershell/machineaccounts/models/machine-account-bulk-request
tags: ['SDK', 'Software Development Kit', 'MachineAccountBulkRequest', 'MachineAccountBulkRequest']
---


# MachineAccountBulkRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Ids** | **[]String** | IDs of the machine accounts to process. Provide between 1 and 100 IDs. | [required]

## Examples

- Prepare the resource
```powershell
$MachineAccountBulkRequest = Initialize-MachineAccountBulkRequest  -Ids ["ef38f94347e94562b5bb8424a56397d8","2c9180835d2e5168015d32f890ca1581"]
```

- Convert the resource to JSON
```powershell
$MachineAccountBulkRequest | ConvertTo-JSON
```


[[Back to top]](#) 

