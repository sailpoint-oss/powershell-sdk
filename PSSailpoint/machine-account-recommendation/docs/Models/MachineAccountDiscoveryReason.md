---
id: machine-account-discovery-reason
title: MachineAccountDiscoveryReason
pagination_label: MachineAccountDiscoveryReason
sidebar_label: MachineAccountDiscoveryReason
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'MachineAccountDiscoveryReason', 'MachineAccountDiscoveryReason'] 
slug: /tools/sdk/powershell/machineaccountrecommendation/models/machine-account-discovery-reason
tags: ['SDK', 'Software Development Kit', 'MachineAccountDiscoveryReason', 'MachineAccountDiscoveryReason']
---


# MachineAccountDiscoveryReason

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | Reason ID. | [optional] 
**Message** | **String** | Readable message for the reason, in the requested language. | [optional] 

## Examples

- Prepare the resource
```powershell
$MachineAccountDiscoveryReason = Initialize-MachineAccountDiscoveryReason  -Id high-privilege-grant `
 -Message Account was granted high-privilege access.
```

- Convert the resource to JSON
```powershell
$MachineAccountDiscoveryReason | ConvertTo-JSON
```


[[Back to top]](#) 

