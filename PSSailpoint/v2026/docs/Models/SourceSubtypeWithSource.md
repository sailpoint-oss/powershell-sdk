---
id: v2026-source-subtype-with-source
title: SourceSubtypeWithSource
pagination_label: SourceSubtypeWithSource
sidebar_label: SourceSubtypeWithSource
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'SourceSubtypeWithSource', 'V2026SourceSubtypeWithSource'] 
slug: /tools/sdk/powershell/v2026/models/source-subtype-with-source
tags: ['SDK', 'Software Development Kit', 'SourceSubtypeWithSource', 'V2026SourceSubtypeWithSource']
---


# SourceSubtypeWithSource

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | Unique identifier for the subtype. | [optional] 
**SourceId** | **String** | The ID of the source. | [optional] [readonly] 
**TechnicalName** | **String** | Technical name of the subtype. | [optional] 
**DisplayName** | **String** | Display name of the subtype. | [optional] 
**Description** | **String** | Description of the subtype. | [optional] 
**Created** | **System.DateTime** | Creation timestamp. | [optional] 
**Modified** | **System.DateTime** | Last modified timestamp. | [optional] 
**Type** | **String** | Type of the subtype. Either MACHINE OR null. | [optional] 
**Source** | [**SourceSubtypeWithSourceSource**](source-subtype-with-source-source) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$SourceSubtypeWithSource = Initialize-V2026SourceSubtypeWithSource  -Id 38453251-6be2-5f8f-df93-5ce19e295838 `
 -SourceId null `
 -TechnicalName foo `
 -DisplayName Mr Foo `
 -Description fighters `
 -Created 2025-07-28T16:13:42.801300Z `
 -Modified 2025-07-28T16:13:42.750850Z `
 -Type MACHINE `
 -Source null
```

- Convert the resource to JSON
```powershell
$SourceSubtypeWithSource | ConvertTo-JSON
```


[[Back to top]](#) 

