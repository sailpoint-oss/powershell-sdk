---
id: nerm-validation-errors
title: ValidationErrors
pagination_label: ValidationErrors
sidebar_label: ValidationErrors
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'ValidationErrors', 'NERMValidationErrors'] 
slug: /tools/sdk/powershell/nerm/models/validation-errors
tags: ['SDK', 'Software Development Kit', 'ValidationErrors', 'NERMValidationErrors']
---


# ValidationErrors

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarError** | [**SystemCollectionsHashtable**]https://learn.microsoft.com/en-us/dotnet/api/system.collections.hashtable?view=net-9.0 |  | [optional] 
**Errors** | [**SystemCollectionsHashtable**]https://learn.microsoft.com/en-us/dotnet/api/system.collections.hashtable?view=net-9.0 |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ValidationErrors = Initialize-NERMValidationErrors  -VarError The <object> failed to create/update `
 -Errors {attribute=can't be blank}
```

- Convert the resource to JSON
```powershell
$ValidationErrors | ConvertTo-JSON
```


[[Back to top]](#) 

