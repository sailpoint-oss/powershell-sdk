---
id: v2026-dimension-schema
title: DimensionSchema
pagination_label: DimensionSchema
sidebar_label: DimensionSchema
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'DimensionSchema', 'V2026DimensionSchema'] 
slug: /tools/sdk/powershell/v2026/models/dimension-schema
tags: ['SDK', 'Software Development Kit', 'DimensionSchema', 'V2026DimensionSchema']
---


# DimensionSchema

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**DimensionAttributes** | [**[]DimensionAttribute**](dimension-attribute) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$DimensionSchema = Initialize-V2026DimensionSchema  -DimensionAttributes null
```

- Convert the resource to JSON
```powershell
$DimensionSchema | ConvertTo-JSON
```


[[Back to top]](#) 

