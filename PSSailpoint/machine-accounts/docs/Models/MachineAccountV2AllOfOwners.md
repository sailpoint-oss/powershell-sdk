---
id: machine-account-v2-all-of-owners
title: MachineAccountV2AllOfOwners
pagination_label: MachineAccountV2AllOfOwners
sidebar_label: MachineAccountV2AllOfOwners
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'MachineAccountV2AllOfOwners', 'MachineAccountV2AllOfOwners'] 
slug: /tools/sdk/powershell/machineaccounts/models/machine-account-v2-all-of-owners
tags: ['SDK', 'Software Development Kit', 'MachineAccountV2AllOfOwners', 'MachineAccountV2AllOfOwners']
---


# MachineAccountV2AllOfOwners

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Primary** | [**BaseReferenceDto**](base-reference-dto) | The identity selected as the primary owner. | [optional] 
**Secondary** | [**[]BaseReferenceDto**](base-reference-dto) | The secondary owners. Entries are either up to ten identities (type `IDENTITY`) or one governance group (type `GOVERNANCE_GROUP`), not both. | [optional] 

## Examples

- Prepare the resource
```powershell
$MachineAccountV2AllOfOwners = Initialize-MachineAccountV2AllOfOwners  -Primary null `
 -Secondary [{"id":"2c9180858082150f0180893dbaf44202","type":"IDENTITY","name":"Jane Doe"}]
```

- Convert the resource to JSON
```powershell
$MachineAccountV2AllOfOwners | ConvertTo-JSON
```


[[Back to top]](#) 

