---
id: form-error
title: FormError
pagination_label: FormError
sidebar_label: FormError
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'FormError', 'FormError'] 
slug: /tools/sdk/powershell/customforms/models/form-error
tags: ['SDK', 'Software Development Kit', 'FormError', 'FormError']
---


# FormError

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Key** | **String** | Key is the technical key | [optional] 
**Messages** | [**[]ErrorMessage**](error-message) | Messages is a list of web.ErrorMessage items | [optional] 
**Value** | **AnyType** | Value is the value associated with a Key | [optional] 

## Examples

- Prepare the resource
```powershell
$FormError = Initialize-FormError  -Key department `
 -Messages null `
 -Value Engineering
```

- Convert the resource to JSON
```powershell
$FormError | ConvertTo-JSON
```


[[Back to top]](#) 

