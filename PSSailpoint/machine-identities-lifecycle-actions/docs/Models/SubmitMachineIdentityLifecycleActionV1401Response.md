---
id: submit-machine-identity-lifecycle-action-v1401-response
title: SubmitMachineIdentityLifecycleActionV1401Response
pagination_label: SubmitMachineIdentityLifecycleActionV1401Response
sidebar_label: SubmitMachineIdentityLifecycleActionV1401Response
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'SubmitMachineIdentityLifecycleActionV1401Response', 'SubmitMachineIdentityLifecycleActionV1401Response'] 
slug: /tools/sdk/powershell/machineidentitieslifecycleactions/models/submit-machine-identity-lifecycle-action-v1401-response
tags: ['SDK', 'Software Development Kit', 'SubmitMachineIdentityLifecycleActionV1401Response', 'SubmitMachineIdentityLifecycleActionV1401Response']
---


# SubmitMachineIdentityLifecycleActionV1401Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarError** | **AnyType** | A message describing the error | [optional] 

## Examples

- Prepare the resource
```powershell
$SubmitMachineIdentityLifecycleActionV1401Response = Initialize-SubmitMachineIdentityLifecycleActionV1401Response  -VarError JWT validation failed: JWT is expired
```

- Convert the resource to JSON
```powershell
$SubmitMachineIdentityLifecycleActionV1401Response | ConvertTo-JSON
```


[[Back to top]](#) 

