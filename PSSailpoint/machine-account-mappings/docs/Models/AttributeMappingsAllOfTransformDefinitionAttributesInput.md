---
id: attribute-mappings-all-of-transform-definition-attributes-input
title: AttributeMappingsAllOfTransformDefinitionAttributesInput
pagination_label: AttributeMappingsAllOfTransformDefinitionAttributesInput
sidebar_label: AttributeMappingsAllOfTransformDefinitionAttributesInput
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'AttributeMappingsAllOfTransformDefinitionAttributesInput', 'AttributeMappingsAllOfTransformDefinitionAttributesInput'] 
slug: /tools/sdk/powershell/machineaccountmappings/models/attribute-mappings-all-of-transform-definition-attributes-input
tags: ['SDK', 'Software Development Kit', 'AttributeMappingsAllOfTransformDefinitionAttributesInput', 'AttributeMappingsAllOfTransformDefinitionAttributesInput']
---


# AttributeMappingsAllOfTransformDefinitionAttributesInput

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** | The Type of Attribute | [optional] 
**Attributes** | [**AttributeMappingsAllOfTransformDefinitionAttributesInputAttributes**](attribute-mappings-all-of-transform-definition-attributes-input-attributes) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$AttributeMappingsAllOfTransformDefinitionAttributesInput = Initialize-AttributeMappingsAllOfTransformDefinitionAttributesInput  -Type accountAttribute `
 -Attributes null
```

- Convert the resource to JSON
```powershell
$AttributeMappingsAllOfTransformDefinitionAttributesInput | ConvertTo-JSON
```


[[Back to top]](#) 

