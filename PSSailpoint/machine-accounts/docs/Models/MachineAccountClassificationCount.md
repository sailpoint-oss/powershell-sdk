---
id: machine-account-classification-count
title: MachineAccountClassificationCount
pagination_label: MachineAccountClassificationCount
sidebar_label: MachineAccountClassificationCount
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'MachineAccountClassificationCount', 'MachineAccountClassificationCount'] 
slug: /tools/sdk/powershell/machineaccounts/models/machine-account-classification-count
tags: ['SDK', 'Software Development Kit', 'MachineAccountClassificationCount', 'MachineAccountClassificationCount']
---


# MachineAccountClassificationCount

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ClassificationMethod** |  **Enum** [  "CRITERIA",    "SOURCE",    "DISCOVERY" ] | The classification method that found the candidates. | [optional] 
**Count** | **Int32** | The number of candidates found by this classification method. | [optional] 

## Examples

- Prepare the resource
```powershell
$MachineAccountClassificationCount = Initialize-MachineAccountClassificationCount  -ClassificationMethod CRITERIA `
 -Count 42
```

- Convert the resource to JSON
```powershell
$MachineAccountClassificationCount | ConvertTo-JSON
```


[[Back to top]](#) 

