---
id: dimension-schema
title: DimensionSchema
pagination_label: DimensionSchema
sidebar_label: DimensionSchema
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'DimensionSchema', 'DimensionSchema'] 
slug: /tools/sdk/powershell/roles/models/dimension-schema
tags: ['SDK', 'Software Development Kit', 'DimensionSchema', 'DimensionSchema']
---


# DimensionSchema

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**DimensionAttributes** | [**[]DimensionAttribute**](dimension-attribute) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$DimensionSchema = Initialize-DimensionSchema  -DimensionAttributes null
```

- Convert the resource to JSON
```powershell
$DimensionSchema | ConvertTo-JSON
```


[[Back to top]](#) 

