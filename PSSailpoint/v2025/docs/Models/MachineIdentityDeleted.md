---
id: v2025-machine-identity-deleted
title: MachineIdentityDeleted
pagination_label: MachineIdentityDeleted
sidebar_label: MachineIdentityDeleted
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'MachineIdentityDeleted', 'V2025MachineIdentityDeleted'] 
slug: /tools/sdk/powershell/v2025/models/machine-identity-deleted
tags: ['SDK', 'Software Development Kit', 'MachineIdentityDeleted', 'V2025MachineIdentityDeleted']
---


# MachineIdentityDeleted

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EventType** |  **Enum** [  "MACHINE_IDENTITY_DELETED" ] | Type of the event. | [required]
**MachineIdentity** | [**MachineIdentityDeletedMachineIdentity**](machine-identity-deleted-machine-identity) |  | [required]

## Examples

- Prepare the resource
```powershell
$MachineIdentityDeleted = Initialize-V2025MachineIdentityDeleted  -EventType MACHINE_IDENTITY_DELETED `
 -MachineIdentity null
```

- Convert the resource to JSON
```powershell
$MachineIdentityDeleted | ConvertTo-JSON
```


[[Back to top]](#) 

