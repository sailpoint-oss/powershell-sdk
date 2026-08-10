---
id: reference
title: Reference
pagination_label: Reference
sidebar_label: Reference
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'Reference', 'Reference'] 
slug: /tools/sdk/powershell/sodcontrols/models/reference
tags: ['SDK', 'Software Development Kit', 'Reference', 'Reference']
---


# Reference

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | Opaque identifier in the exact form required by the owning service (case, dashes, etc. must be preserved).  | [required]
**Type** | **String** | The type of object being referenced. | [required]
**Name** | **String** | Human-readable name for the referenced identity or governance group when known. Omitted when unknown; null is allowed in the schema when clients send or receive explicit nulls.  | [optional] 

## Examples

- Prepare the resource
```powershell
$Reference = Initialize-Reference  -Id 943a7c57da334d07ba2454bf7fcf144f `
 -Type IDENTITY `
 -Name John Doe
```

- Convert the resource to JSON
```powershell
$Reference | ConvertTo-JSON
```


[[Back to top]](#) 

