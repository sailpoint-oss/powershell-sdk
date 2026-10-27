---
id: machine-account-bulk-update-request
title: MachineAccountBulkUpdateRequest
pagination_label: MachineAccountBulkUpdateRequest
sidebar_label: MachineAccountBulkUpdateRequest
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'MachineAccountBulkUpdateRequest', 'MachineAccountBulkUpdateRequest'] 
slug: /tools/sdk/powershell/machineaccounts/models/machine-account-bulk-update-request
tags: ['SDK', 'Software Development Kit', 'MachineAccountBulkUpdateRequest', 'MachineAccountBulkUpdateRequest']
---


# MachineAccountBulkUpdateRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Ids** | **[]String** | IDs of the machine accounts to update. Provide between 1 and 100 IDs. | [required]
**JsonPatch** | [**[]JsonPatchOperation**](json-patch-operation) | [JSON Patch](https://tools.ietf.org/html/rfc6902) operations to apply to every machine account in `ids`. Each operation must target one of these top-level fields: `description`, `subtype`, `environment`, `machineIdentity`, `ownerIdentity`, `manuallyEdited`. | [required]

## Examples

- Prepare the resource
```powershell
$MachineAccountBulkUpdateRequest = Initialize-MachineAccountBulkUpdateRequest  -Ids ["ef38f94347e94562b5bb8424a56397d8","2c9180835d2e5168015d32f890ca1581"] `
 -JsonPatch [{"op":"replace","path":"/environment","value":"PROD"}]
```

- Convert the resource to JSON
```powershell
$MachineAccountBulkUpdateRequest | ConvertTo-JSON
```


[[Back to top]](#) 

