---
id: machineidentityownersv2
title: Machineidentityownersv2
pagination_label: Machineidentityownersv2
sidebar_label: Machineidentityownersv2
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'Machineidentityownersv2', 'Machineidentityownersv2'] 
slug: /tools/sdk/powershell/machineidentities/models/machineidentityownersv2
tags: ['SDK', 'Software Development Kit', 'Machineidentityownersv2', 'Machineidentityownersv2']
---


# Machineidentityownersv2

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Primary** | [**Machineidentityownersv2Primary**](machineidentityownersv2-primary) |  | [optional] 
**Secondary** | [**[]Basereferencedto**](basereferencedto) | Additional owners. Entries are either up to ten human (IDENTITY) references or exactly one GOVERNANCE_GROUP reference - not both. Governance-group owners appear here with type GOVERNANCE_GROUP. | [optional] 

## Examples

- Prepare the resource
```powershell
$Machineidentityownersv2 = Initialize-Machineidentityownersv2  -Primary null `
 -Secondary [{"id":"2c9180858082150f0180893dbaf44202","name":"Jane Doe","type":"IDENTITY"}]
```

- Convert the resource to JSON
```powershell
$Machineidentityownersv2 | ConvertTo-JSON
```


[[Back to top]](#) 

