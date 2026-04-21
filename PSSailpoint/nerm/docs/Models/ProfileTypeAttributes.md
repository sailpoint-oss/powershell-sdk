---
id: nerm-profile-type-attributes
title: ProfileTypeAttributes
pagination_label: ProfileTypeAttributes
sidebar_label: ProfileTypeAttributes
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'ProfileTypeAttributes', 'NERMProfileTypeAttributes'] 
slug: /tools/sdk/powershell/nerm/models/profile-type-attributes
tags: ['SDK', 'Software Development Kit', 'ProfileTypeAttributes', 'NERMProfileTypeAttributes']
---


# ProfileTypeAttributes

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Count** | **Int32** | How many ne attribute records exist | [optional] 
**Records** | [**[]ProfileTypeAttribute**](profile-type-attribute) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ProfileTypeAttributes = Initialize-NERMProfileTypeAttributes  -Count 5 `
 -Records null
```

- Convert the resource to JSON
```powershell
$ProfileTypeAttributes | ConvertTo-JSON
```


[[Back to top]](#) 

