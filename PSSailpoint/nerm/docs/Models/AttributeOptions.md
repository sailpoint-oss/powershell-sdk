---
id: nerm-attribute-options
title: AttributeOptions
pagination_label: AttributeOptions
sidebar_label: AttributeOptions
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'AttributeOptions', 'NERMAttributeOptions'] 
slug: /tools/sdk/powershell/nerm/models/attribute-options
tags: ['SDK', 'Software Development Kit', 'AttributeOptions', 'NERMAttributeOptions']
---


# AttributeOptions

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**NeAttributeOptions** | [**[]AttributeOption**](attribute-option) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$AttributeOptions = Initialize-NERMAttributeOptions  -NeAttributeOptions null
```

- Convert the resource to JSON
```powershell
$AttributeOptions | ConvertTo-JSON
```


[[Back to top]](#) 

