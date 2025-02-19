---
id: source-schemas-inner
title: SourceSchemasInner
pagination_label: SourceSchemasInner
sidebar_label: SourceSchemasInner
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'SourceSchemasInner', 'SourceSchemasInner'] 
slug: /tools/sdk/powershell/v3/models/source-schemas-inner
tags: ['SDK', 'Software Development Kit', 'SourceSchemasInner', 'SourceSchemasInner']
---


# SourceSchemasInner

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** |  **Enum** [  "CONNECTOR_SCHEMA" ] | Type of object being referenced. | [optional] 
**Id** | **String** | Schema ID. | [optional] 
**Name** | **String** | Schema's human-readable display name. | [optional] 

## Examples

- Prepare the resource
```powershell
$SourceSchemasInner = Initialize-PSSailpoint.V3SourceSchemasInner  -Type CONNECTOR_SCHEMA `
 -Id 2c91808568c529c60168cca6f90c1777 `
 -Name MySchema
$SourceSchemasInner = @"{  "Type": "CONNECTOR_SCHEMA", "Id": "2c91808568c529c60168cca6f90c1777", "Name": "MySchema" }"@
```

- Convert the resource from JSON
```powershell
ConvertFrom-JsonToSourceSchemasInner -Json $SourceSchemasInner
```


[[Back to top]](#) 

