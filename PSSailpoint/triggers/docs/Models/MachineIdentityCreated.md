---
id: machine-identity-created
title: MachineIdentityCreated
pagination_label: MachineIdentityCreated
sidebar_label: MachineIdentityCreated
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'MachineIdentityCreated', 'MachineIdentityCreated'] 
slug: /tools/sdk/powershell/triggers/models/machine-identity-created
tags: ['SDK', 'Software Development Kit', 'MachineIdentityCreated', 'MachineIdentityCreated']
---


# MachineIdentityCreated

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EventType** |  **Enum** [  "MACHINE_IDENTITY_CREATED" ] | Type of the event. | [required]
**MachineIdentity** | [**MachineIdentityCreatedMachineIdentity**](machine-identity-created-machine-identity) |  | [required]

## Examples

- Prepare the resource
```powershell
$MachineIdentityCreated = Initialize-MachineIdentityCreated  -EventType MACHINE_IDENTITY_CREATED `
 -MachineIdentity null
```

- Convert the resource to JSON
```powershell
$MachineIdentityCreated | ConvertTo-JSON
```


[[Back to top]](#) 

