---
id: attribute-mappings
title: AttributeMappings
pagination_label: AttributeMappings
sidebar_label: AttributeMappings
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'AttributeMappings', 'AttributeMappings'] 
slug: /tools/sdk/powershell/machineaccountmappings/models/attribute-mappings
tags: ['SDK', 'Software Development Kit', 'AttributeMappings', 'AttributeMappings']
---


# AttributeMappings

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Target** | [**AttributeMappingsAllOfTarget**](attribute-mappings-all-of-target) |  | [optional] 
**TransformDefinition** | [**AttributeMappingsAllOfTransformDefinition**](attribute-mappings-all-of-transform-definition) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$AttributeMappings = Initialize-AttributeMappings  -Target null `
 -TransformDefinition null
```

- Convert the resource to JSON
```powershell
$AttributeMappings | ConvertTo-JSON
```


[[Back to top]](#) 

