---
id: nerm-form1
title: Form1
pagination_label: Form1
sidebar_label: Form1
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'Form1', 'NERMForm1'] 
slug: /tools/sdk/powershell/nerm/models/form1
tags: ['SDK', 'Software Development Kit', 'Form1', 'NERMForm1']
---


# Form1

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
$Form1 = Initialize-NERMForm1  -Uid form_uid `
 -Description Form for creating new profile `
 -Name My Form Name `
 -Archived false
```

- Convert the resource to JSON
```powershell
$Form1 | ConvertTo-JSON
```


[[Back to top]](#) 

