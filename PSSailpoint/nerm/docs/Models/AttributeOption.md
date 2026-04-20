---
id: nerm-attribute-option
title: AttributeOption
pagination_label: AttributeOption
sidebar_label: AttributeOption
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'AttributeOption', 'NERMAttributeOption'] 
slug: /tools/sdk/powershell/nerm/models/attribute-option
tags: ['SDK', 'Software Development Kit', 'AttributeOption', 'NERMAttributeOption']
---


# AttributeOption

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | [optional] [readonly] 
**Uid** | **String** |  | [optional] [readonly] 
**NeAttributeId** | **String** |  | [optional] 
**Option** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$AttributeOption = Initialize-NERMAttributeOption  -Id null `
 -Uid null `
 -NeAttributeId null `
 -Option null
```

- Convert the resource to JSON
```powershell
$AttributeOption | ConvertTo-JSON
```


[[Back to top]](#) 

