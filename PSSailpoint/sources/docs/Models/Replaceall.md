---
id: replaceall
title: Replaceall
pagination_label: Replaceall
sidebar_label: Replaceall
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'Replaceall', 'Replaceall'] 
slug: /tools/sdk/powershell/sourcesv1/models/replaceall
tags: ['SDK', 'Software Development Kit', 'Replaceall', 'Replaceall']
---


# Replaceall

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Table** | [**map[string]AnyType**](any-type) | An attribute of key-value pairs. Each pair identifies the pattern to search for as its key, and the replacement string as its value. | [required]
**RequiresPeriodicRefresh** | **Boolean** | A value that indicates whether the transform logic should be re-evaluated every evening as part of the identity refresh process | [optional] [default to $false]
**VarInput** | [**map[string]AnyType**](any-type) | This is an optional attribute that can explicitly define the input data which will be fed into the transform logic. If input is not provided, the transform will take its input from the source and attribute combination configured via the UI. | [optional] 

## Examples

- Prepare the resource
```powershell
$Replaceall = Initialize-Replaceall  -Table {"-":" ","\"":"'","ñ":"n"} `
 -RequiresPeriodicRefresh false `
 -VarInput {"type":"accountAttribute","attributes":{"attributeName":"first_name","sourceName":"Source"}}
```

- Convert the resource to JSON
```powershell
$Replaceall | ConvertTo-JSON
```


[[Back to top]](#) 

