---
id: nerm-create-attribute201-response
title: CreateAttribute201Response
pagination_label: CreateAttribute201Response
sidebar_label: CreateAttribute201Response
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'CreateAttribute201Response', 'NERMCreateAttribute201Response'] 
slug: /tools/sdk/powershell/nerm/models/create-attribute201-response
tags: ['SDK', 'Software Development Kit', 'CreateAttribute201Response', 'NERMCreateAttribute201Response']
---


# CreateAttribute201Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**NeAttribute** | [**Attribute**](attribute) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CreateAttribute201Response = Initialize-NERMCreateAttribute201Response  -NeAttribute null
```

- Convert the resource to JSON
```powershell
$CreateAttribute201Response | ConvertTo-JSON
```


[[Back to top]](#) 

