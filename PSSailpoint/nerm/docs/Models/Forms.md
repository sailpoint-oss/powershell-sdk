---
id: nerm-forms
title: Forms
pagination_label: Forms
sidebar_label: Forms
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'Forms', 'NERMForms'] 
slug: /tools/sdk/powershell/nerm/models/forms
tags: ['SDK', 'Software Development Kit', 'Forms', 'NERMForms']
---


# Forms

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Uid** | **String** | The user-specified identifier of the form | [optional] 
**Description** | **String** | The description of the form | [optional] 
**Name** | **String** | The name of the form | [optional] 
**Archived** | **Boolean** | Determines whether the form is archived | [optional] 

## Examples

- Prepare the resource
```powershell
$Forms = Initialize-NERMForms  -Uid form_uid `
 -Description Form for creating new profile `
 -Name My Form Name `
 -Archived false
```

- Convert the resource to JSON
```powershell
$Forms | ConvertTo-JSON
```


[[Back to top]](#) 

