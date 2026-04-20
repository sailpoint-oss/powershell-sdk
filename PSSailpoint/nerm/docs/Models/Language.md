---
id: nerm-language
title: Language
pagination_label: Language
sidebar_label: Language
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'Language', 'NERMLanguage'] 
slug: /tools/sdk/powershell/nerm/models/language
tags: ['SDK', 'Software Development Kit', 'Language', 'NERMLanguage']
---


# Language

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Default** | **Boolean** | Set default to True to set a default language, to set another language to default, set default to True on the target language and the current default will become disabled | [optional] 
**Enabled** | **Boolean** | True when the language is enabled, False when it is not | [optional] 
**Locale** | **String** | The locale string for the language, current options are- en, fr, es, de, fr-CA | [optional] 

## Examples

- Prepare the resource
```powershell
$Language = Initialize-NERMLanguage  -Default true `
 -Enabled true `
 -Locale es
```

- Convert the resource to JSON
```powershell
$Language | ConvertTo-JSON
```


[[Back to top]](#) 

