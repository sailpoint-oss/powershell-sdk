---
id: list-public-machine-identities-v1401-response
title: ListPublicMachineIdentitiesV1401Response
pagination_label: ListPublicMachineIdentitiesV1401Response
sidebar_label: ListPublicMachineIdentitiesV1401Response
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'ListPublicMachineIdentitiesV1401Response', 'ListPublicMachineIdentitiesV1401Response'] 
slug: /tools/sdk/powershell/publicmachineidentities/models/list-public-machine-identities-v1401-response
tags: ['SDK', 'Software Development Kit', 'ListPublicMachineIdentitiesV1401Response', 'ListPublicMachineIdentitiesV1401Response']
---


# ListPublicMachineIdentitiesV1401Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarError** | **AnyType** | A message describing the error | [optional] 

## Examples

- Prepare the resource
```powershell
$ListPublicMachineIdentitiesV1401Response = Initialize-ListPublicMachineIdentitiesV1401Response  -VarError JWT validation failed: JWT is expired
```

- Convert the resource to JSON
```powershell
$ListPublicMachineIdentitiesV1401Response | ConvertTo-JSON
```


[[Back to top]](#) 

