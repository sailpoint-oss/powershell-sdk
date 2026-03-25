---
id: v2026-json-patch
title: JsonPatch
pagination_label: JsonPatch
sidebar_label: JsonPatch
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'JsonPatch', 'V2026JsonPatch'] 
slug: /tools/sdk/powershell/v2026/models/json-patch
tags: ['SDK', 'Software Development Kit', 'JsonPatch', 'V2026JsonPatch']
---


# JsonPatch

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Operations** | [**[]JsonPatchOperation**](json-patch-operation) | Operations to be applied | [optional] 

## Examples

- Prepare the resource
```powershell
$JsonPatch = Initialize-V2026JsonPatch  -Operations null
```

- Convert the resource to JSON
```powershell
$JsonPatch | ConvertTo-JSON
```


[[Back to top]](#) 

