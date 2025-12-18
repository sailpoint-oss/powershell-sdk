---
id: v2025-machine-identity-created
title: MachineIdentityCreated
pagination_label: MachineIdentityCreated
sidebar_label: MachineIdentityCreated
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'MachineIdentityCreated', 'V2025MachineIdentityCreated'] 
slug: /tools/sdk/powershell/v2025/models/machine-identity-created
tags: ['SDK', 'Software Development Kit', 'MachineIdentityCreated', 'V2025MachineIdentityCreated']
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
$MachineIdentityCreated = Initialize-V2025MachineIdentityCreated  -EventType MACHINE_IDENTITY_CREATED `
 -MachineIdentity null
```

- Convert the resource to JSON
```powershell
$MachineIdentityCreated | ConvertTo-JSON
```


[[Back to top]](#) 

