---
id: concatenation
title: Concatenation
pagination_label: Concatenation
sidebar_label: Concatenation
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'Concatenation', 'Concatenation'] 
slug: /tools/sdk/powershell/transformsv1/models/concatenation
tags: ['SDK', 'Software Development Kit', 'Concatenation', 'Concatenation']
---


# Concatenation

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Values** | [**[]SystemCollectionsHashtable**](system-collections-hashtable) | An array of items to join together | [required]
**RequiresPeriodicRefresh** | **Boolean** | A value that indicates whether the transform logic should be re-evaluated every evening as part of the identity refresh process | [optional] [default to $false]
**VarInput** | [**map[string]AnyType**](any-type) | This is an optional attribute that can explicitly define the input data which will be fed into the transform logic. If input is not provided, the transform will take its input from the source and attribute combination configured via the UI. | [optional] 

## Examples

- Prepare the resource
```powershell
$Concatenation = Initialize-Concatenation  -Values ["John"," ","Smith"] `
 -RequiresPeriodicRefresh false `
 -VarInput {"type":"accountAttribute","attributes":{"attributeName":"first_name","sourceName":"Source"}}
```

- Convert the resource to JSON
```powershell
$Concatenation | ConvertTo-JSON
```


[[Back to top]](#) 

