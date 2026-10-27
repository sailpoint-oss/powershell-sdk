---
id: list-machine-identity-subtypes-v1401-response
title: ListMachineIdentitySubtypesV1401Response
pagination_label: ListMachineIdentitySubtypesV1401Response
sidebar_label: ListMachineIdentitySubtypesV1401Response
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'ListMachineIdentitySubtypesV1401Response', 'ListMachineIdentitySubtypesV1401Response'] 
slug: /tools/sdk/powershell/machineidentitymetadata/models/list-machine-identity-subtypes-v1401-response
tags: ['SDK', 'Software Development Kit', 'ListMachineIdentitySubtypesV1401Response', 'ListMachineIdentitySubtypesV1401Response']
---


# ListMachineIdentitySubtypesV1401Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarError** | **AnyType** | A message describing the error | [optional] 

## Examples

- Prepare the resource
```powershell
$ListMachineIdentitySubtypesV1401Response = Initialize-ListMachineIdentitySubtypesV1401Response  -VarError JWT validation failed: JWT is expired
```

- Convert the resource to JSON
```powershell
$ListMachineIdentitySubtypesV1401Response | ConvertTo-JSON
```


[[Back to top]](#) 

