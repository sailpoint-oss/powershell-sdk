---
id: v2026-object-import-result
title: ObjectImportResult
pagination_label: ObjectImportResult
sidebar_label: ObjectImportResult
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'ObjectImportResult', 'V2026ObjectImportResult'] 
slug: /tools/sdk/powershell/v2026/models/object-import-result
tags: ['SDK', 'Software Development Kit', 'ObjectImportResult', 'V2026ObjectImportResult']
---


# ObjectImportResult

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Infos** | [**[]SpConfigMessage**](sp-config-message) | Informational messages returned from the target service on import. | [required]
**Warnings** | [**[]SpConfigMessage**](sp-config-message) | Warning messages returned from the target service on import. | [required]
**Errors** | [**[]SpConfigMessage**](sp-config-message) | Error messages returned from the target service on import. | [required]
**ImportedObjects** | [**[]ImportObject**](import-object) | References to objects that were created or updated by the import. | [required]

## Examples

- Prepare the resource
```powershell
$ObjectImportResult = Initialize-V2026ObjectImportResult  -Infos null `
 -Warnings null `
 -Errors null `
 -ImportedObjects null
```

- Convert the resource to JSON
```powershell
$ObjectImportResult | ConvertTo-JSON
```


[[Back to top]](#) 

