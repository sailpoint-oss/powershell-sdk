---
id: list-machine-identity-subtypes-v1429-response
title: ListMachineIdentitySubtypesV1429Response
pagination_label: ListMachineIdentitySubtypesV1429Response
sidebar_label: ListMachineIdentitySubtypesV1429Response
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'ListMachineIdentitySubtypesV1429Response', 'ListMachineIdentitySubtypesV1429Response'] 
slug: /tools/sdk/powershell/machineidentitymetadata/models/list-machine-identity-subtypes-v1429-response
tags: ['SDK', 'Software Development Kit', 'ListMachineIdentitySubtypesV1429Response', 'ListMachineIdentitySubtypesV1429Response']
---


# ListMachineIdentitySubtypesV1429Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Message** | **AnyType** | A message describing the error | [optional] 

## Examples

- Prepare the resource
```powershell
$ListMachineIdentitySubtypesV1429Response = Initialize-ListMachineIdentitySubtypesV1429Response  -Message  Rate Limit Exceeded 
```

- Convert the resource to JSON
```powershell
$ListMachineIdentitySubtypesV1429Response | ConvertTo-JSON
```


[[Back to top]](#) 

