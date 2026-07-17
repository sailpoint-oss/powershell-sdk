---
id: sed-patch
title: SedPatch
pagination_label: SedPatch
sidebar_label: SedPatch
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'SedPatch', 'SedPatch'] 
slug: /tools/sdk/powershell/suggestedentitlementdescription/models/sed-patch
tags: ['SDK', 'Software Development Kit', 'SedPatch', 'SedPatch']
---


# SedPatch

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Op** | **String** | desired operation | [optional] 
**Path** | **String** | field to be patched | [optional] 
**Value** | **AnyType** | value to replace with | [optional] 

## Examples

- Prepare the resource
```powershell
$SedPatch = Initialize-SedPatch  -Op replace `
 -Path status `
 -Value approved
```

- Convert the resource to JSON
```powershell
$SedPatch | ConvertTo-JSON
```


[[Back to top]](#) 

