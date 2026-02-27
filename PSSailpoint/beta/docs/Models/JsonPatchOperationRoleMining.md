---
id: beta-json-patch-operation-role-mining
title: JsonPatchOperationRoleMining
pagination_label: JsonPatchOperationRoleMining
sidebar_label: JsonPatchOperationRoleMining
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'JsonPatchOperationRoleMining', 'BetaJsonPatchOperationRoleMining'] 
slug: /tools/sdk/powershell/beta/models/json-patch-operation-role-mining
tags: ['SDK', 'Software Development Kit', 'JsonPatchOperationRoleMining', 'BetaJsonPatchOperationRoleMining']
---


# JsonPatchOperationRoleMining

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Op** |  **Enum** [  "remove",    "replace" ] | The operation to be performed | [required]
**Path** | **String** | A string JSON Pointer representing the target path to an element to be affected by the operation | [required]
**Value** | [**JsonPatchOperationRoleMiningValue**](json-patch-operation-role-mining-value) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$JsonPatchOperationRoleMining = Initialize-BetaJsonPatchOperationRoleMining  -Op replace `
 -Path /description `
 -Value null
```

- Convert the resource to JSON
```powershell
$JsonPatchOperationRoleMining | ConvertTo-JSON
```


[[Back to top]](#) 

