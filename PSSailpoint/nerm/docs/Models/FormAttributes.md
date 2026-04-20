---
id: nerm-form-attributes
title: FormAttributes
pagination_label: FormAttributes
sidebar_label: FormAttributes
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'FormAttributes', 'NERMFormAttributes'] 
slug: /tools/sdk/powershell/nerm/models/form-attributes
tags: ['SDK', 'Software Development Kit', 'FormAttributes', 'NERMFormAttributes']
---


# FormAttributes

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**FormId** | **String** | The id of the form | [optional] 
**NeAttributeId** | **String** | The id of the attribute | [optional] 
**AttrType** |  **Enum** [  "ne_attribute",    "break" ] | The attribute type | [optional] 
**Order** | **Int32** | The ordinal position of the attribute on the Form.  The order value determines the order or sequence the Form values are presented in the user interface. Each FormAttribute on a Form must have a unique order value. Order valuess can start at zero (0), but often start at one (1). The FormAttribute with order 1 is presented before the FormAttribute with order 2, and so on. Gaps in the order can exist and the system ignores them. | [optional] 

## Examples

- Prepare the resource
```powershell
$FormAttributes = Initialize-NERMFormAttributes  -FormId ac4aae0b-4140-49a4-a84c-126762fd0c8f `
 -NeAttributeId ac4aae0b-4140-49a4-a84c-126762fd0c8f `
 -AttrType ne_attribute `
 -Order 1
```

- Convert the resource to JSON
```powershell
$FormAttributes | ConvertTo-JSON
```


[[Back to top]](#) 

