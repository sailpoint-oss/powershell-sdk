---
id: beta-json-patch-operations
title: JsonPatchOperations
pagination_label: JsonPatchOperations
sidebar_label: JsonPatchOperations
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'JsonPatchOperations', 'BetaJsonPatchOperations'] 
slug: /tools/sdk/powershell/beta/models/json-patch-operations
tags: ['SDK', 'Software Development Kit', 'JsonPatchOperations', 'BetaJsonPatchOperations']
---


# JsonPatchOperations

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Op** |  **Enum** [  "add",    "remove",    "replace" ] | The operation to be performed | [required]
**Path** | **String** | A string representing the target path to an element to be affected by the operation | [required]
**Value** | [**JsonPatchOperationsValue**](json-patch-operations-value) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$JsonPatchOperations = Initialize-PSSailpoint.BetaJsonPatchOperations  -Op replace `
 -Path /dismissed `
 -Value null
$JsonPatchOperations = @"{  "Op": "replace", "Path": "/dismissed", "Value": "null "}"@
```

- Convert the resource from JSON
```powershell
ConvertFrom-JsonToJsonPatchOperations -Json $JsonPatchOperations
```


[[Back to top]](#) 

