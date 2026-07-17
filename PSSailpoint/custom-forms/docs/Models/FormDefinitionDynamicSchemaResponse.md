---
id: form-definition-dynamic-schema-response
title: FormDefinitionDynamicSchemaResponse
pagination_label: FormDefinitionDynamicSchemaResponse
sidebar_label: FormDefinitionDynamicSchemaResponse
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'FormDefinitionDynamicSchemaResponse', 'FormDefinitionDynamicSchemaResponse'] 
slug: /tools/sdk/powershell/customforms/models/form-definition-dynamic-schema-response
tags: ['SDK', 'Software Development Kit', 'FormDefinitionDynamicSchemaResponse', 'FormDefinitionDynamicSchemaResponse']
---


# FormDefinitionDynamicSchemaResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**OutputSchema** | **map[string]AnyType** | OutputSchema holds a JSON schema generated dynamically | [optional] 

## Examples

- Prepare the resource
```powershell
$FormDefinitionDynamicSchemaResponse = Initialize-FormDefinitionDynamicSchemaResponse  -OutputSchema {"outputSchema":{"$schema":"https://json-schema.org/draft/2020-12/schema","additionalProperties":false,"properties":{"firstName":{"title":"First Name","type":"string"},"fullName":{"title":"Full Name","type":"string"},"lastName":{"title":"Last Name","type":"string"},"startDate":{"format":"date-time","title":"Start Date","type":"string"}},"type":"object"}}
```

- Convert the resource to JSON
```powershell
$FormDefinitionDynamicSchemaResponse | ConvertTo-JSON
```


[[Back to top]](#) 

