---
id: nerm-form
title: Form
pagination_label: Form
sidebar_label: Form
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'Form', 'NERMForm'] 
slug: /tools/sdk/powershell/nerm/models/form
tags: ['SDK', 'Software Development Kit', 'Form', 'NERMForm']
---


# Form

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Uid** | **String** | The user-specified identifier of the form | [optional] 
**Description** | **String** | The description of the form | [optional] 
**Name** | **String** | The name of the form | [optional] 
**Archived** | **Boolean** | Determines whether the form is archived | [optional] 
**Id** | **String** | The id of the form | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$Form = Initialize-NERMForm  -Uid form_uid `
 -Description Form for creating new profile `
 -Name My Form Name `
 -Archived false `
 -Id 2e06b876-f456-473d-bd65-b6435e0b6b2d
```

- Convert the resource to JSON
```powershell
$Form | ConvertTo-JSON
```


[[Back to top]](#) 

