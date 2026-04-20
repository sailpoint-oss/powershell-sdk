---
id: nerm-attribute1-validations-attributes
title: Attribute1ValidationsAttributes
pagination_label: Attribute1ValidationsAttributes
sidebar_label: Attribute1ValidationsAttributes
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'Attribute1ValidationsAttributes', 'NERMAttribute1ValidationsAttributes'] 
slug: /tools/sdk/powershell/nerm/models/attribute1-validations-attributes
tags: ['SDK', 'Software Development Kit', 'Attribute1ValidationsAttributes', 'NERMAttribute1ValidationsAttributes']
---


# Attribute1ValidationsAttributes

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ValidationMethod** |  **Enum** [  "required",    "unique",    "date_format",    "days",    "characters",    "extension",    "numericality",    "email_format",    "custom_format",    "no_special_chars" ] | The type of validation to be applied | [optional] 
**Value** | **String** | The value of the validator | [optional] 
**Destroy** | **Boolean** | If the validator should be removed | [optional] 

## Examples

- Prepare the resource
```powershell
$Attribute1ValidationsAttributes = Initialize-NERMAttribute1ValidationsAttributes  -ValidationMethod required `
 -Value mm-dd-yyyy `
 -Destroy false
```

- Convert the resource to JSON
```powershell
$Attribute1ValidationsAttributes | ConvertTo-JSON
```


[[Back to top]](#) 

