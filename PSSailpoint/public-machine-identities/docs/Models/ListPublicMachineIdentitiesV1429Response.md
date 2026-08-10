---
id: list-public-machine-identities-v1429-response
title: ListPublicMachineIdentitiesV1429Response
pagination_label: ListPublicMachineIdentitiesV1429Response
sidebar_label: ListPublicMachineIdentitiesV1429Response
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'ListPublicMachineIdentitiesV1429Response', 'ListPublicMachineIdentitiesV1429Response'] 
slug: /tools/sdk/powershell/publicmachineidentities/models/list-public-machine-identities-v1429-response
tags: ['SDK', 'Software Development Kit', 'ListPublicMachineIdentitiesV1429Response', 'ListPublicMachineIdentitiesV1429Response']
---


# ListPublicMachineIdentitiesV1429Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Message** | **AnyType** | A message describing the error | [optional] 

## Examples

- Prepare the resource
```powershell
$ListPublicMachineIdentitiesV1429Response = Initialize-ListPublicMachineIdentitiesV1429Response  -Message  Rate Limit Exceeded 
```

- Convert the resource to JSON
```powershell
$ListPublicMachineIdentitiesV1429Response | ConvertTo-JSON
```


[[Back to top]](#) 

