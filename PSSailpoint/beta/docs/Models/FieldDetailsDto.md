---
id: beta-field-details-dto
title: FieldDetailsDto
pagination_label: FieldDetailsDto
sidebar_label: FieldDetailsDto
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'FieldDetailsDto', 'BetaFieldDetailsDto'] 
slug: /tools/sdk/powershell/beta/models/field-details-dto
tags: ['SDK', 'Software Development Kit', 'FieldDetailsDto', 'BetaFieldDetailsDto']
---


# FieldDetailsDto

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** | The name of the attribute. | [optional] 
**Transform** | [**SystemCollectionsHashtable**]https://learn.microsoft.com/en-us/dotnet/api/system.collections.hashtable?view=net-9.0 | The transform to apply to the field | [optional] 
**Attributes** | [**SystemCollectionsHashtable**]https://learn.microsoft.com/en-us/dotnet/api/system.collections.hashtable?view=net-9.0 | Attributes required for the transform | [optional] 
**IsRequired** | **Boolean** | Flag indicating whether or not the attribute is required. | [optional] [readonly] [default to $false]
**Type** | **String** | The type of the attribute. | [optional] 
**IsMultiValued** | **Boolean** | Flag indicating whether or not the attribute is multi-valued. | [optional] [default to $false]

## Examples

- Prepare the resource
```powershell
$FieldDetailsDto = Initialize-PSSailpoint.BetaFieldDetailsDto  -Name userName `
 -Transform {type&#x3D;rule, attributes&#x3D;{name&#x3D;Create Unique LDAP Attribute}} `
 -Attributes {template&#x3D;${firstname}.${lastname}${uniqueCounter}, cloudMaxUniqueChecks&#x3D;50, cloudMaxSize&#x3D;20, cloudRequired&#x3D;true} `
 -IsRequired false `
 -Type string `
 -IsMultiValued false
```

- Convert the resource to JSON
```powershell
$FieldDetailsDto | ConvertTo-JSON
```


[[Back to top]](#) 

