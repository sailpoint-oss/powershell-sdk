---
id: beta-json-patch
title: JsonPatch
pagination_label: JsonPatch
sidebar_label: JsonPatch
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'JsonPatch', 'BetaJsonPatch'] 
slug: /tools/sdk/powershell/beta/models/json-patch
tags: ['SDK', 'Software Development Kit', 'JsonPatch', 'BetaJsonPatch']
---


# JsonPatch

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Operations** | [**[]JsonPatchOperation**](json-patch-operation) | Operations to be applied | [optional] 

## Examples

- Prepare the resource
```powershell
$JsonPatch = Initialize-PSSailpoint.BetaJsonPatch  -Operations null
$JsonPatch = @"{  "Operations": "null "}"@
```

- Convert the resource from JSON
```powershell
ConvertFrom-JsonToJsonPatch -Json $JsonPatch
```


[[Back to top]](#) 

