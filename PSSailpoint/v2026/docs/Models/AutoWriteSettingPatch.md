---
id: v2026-auto-write-setting-patch
title: AutoWriteSettingPatch
pagination_label: AutoWriteSettingPatch
sidebar_label: AutoWriteSettingPatch
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'AutoWriteSettingPatch', 'V2026AutoWriteSettingPatch'] 
slug: /tools/sdk/powershell/v2026/models/auto-write-setting-patch
tags: ['SDK', 'Software Development Kit', 'AutoWriteSettingPatch', 'V2026AutoWriteSettingPatch']
---


# AutoWriteSettingPatch

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Op** |  **Enum** [  "replace" ] | The operation to perform. Only ""replace"" is supported. | [required]
**Path** | **String** | The field to update. Allowed values: /enabled, /includedSourceIds, /excludedSourceIds | [required]
**Value** | [**AutoWriteSettingPatchValue**](auto-write-setting-patch-value) |  | [required]

## Examples

- Prepare the resource
```powershell
$AutoWriteSettingPatch = Initialize-V2026AutoWriteSettingPatch  -Op replace `
 -Path /enabled `
 -Value null
```

- Convert the resource to JSON
```powershell
$AutoWriteSettingPatch | ConvertTo-JSON
```


[[Back to top]](#) 

