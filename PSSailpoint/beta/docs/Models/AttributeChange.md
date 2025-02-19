---
id: beta-attribute-change
title: AttributeChange
pagination_label: AttributeChange
sidebar_label: AttributeChange
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'AttributeChange', 'BetaAttributeChange'] 
slug: /tools/sdk/powershell/beta/models/attribute-change
tags: ['SDK', 'Software Development Kit', 'AttributeChange', 'BetaAttributeChange']
---


# AttributeChange

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** | the attribute name | [optional] 
**PreviousValue** | **String** | the old value of attribute | [optional] 
**NewValue** | **String** | the new value of attribute | [optional] 

## Examples

- Prepare the resource
```powershell
$AttributeChange = Initialize-PSSailpoint.BetaAttributeChange  -Name null `
 -PreviousValue null `
 -NewValue null
$AttributeChange = @"{  "Name": "null", "PreviousValue": "null", "NewValue": "null" }"@
```

- Convert the resource from JSON
```powershell
ConvertFrom-JsonToAttributeChange -Json $AttributeChange
```


[[Back to top]](#) 

