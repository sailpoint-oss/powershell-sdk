---
id: json-patch
title: JsonPatch
pagination_label: JsonPatch
sidebar_label: JsonPatch
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'JsonPatch', 'JsonPatch'] 
slug: /tools/sdk/powershell/configurationhub/models/json-patch
tags: ['SDK', 'Software Development Kit', 'JsonPatch', 'JsonPatch']
---


# JsonPatch

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Operations** | [**[]JsonPatchOperation**](json-patch-operation) | Operations to be applied | [optional] 

## Examples

- Prepare the resource
```powershell
$JsonPatch = Initialize-JsonPatch  -Operations null
```

- Convert the resource to JSON
```powershell
$JsonPatch | ConvertTo-JSON
```


[[Back to top]](#) 

