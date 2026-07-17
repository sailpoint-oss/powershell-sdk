---
id: rolepropagationconfiginput
title: Rolepropagationconfiginput
pagination_label: Rolepropagationconfiginput
sidebar_label: Rolepropagationconfiginput
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'Rolepropagationconfiginput', 'Rolepropagationconfiginput'] 
slug: /tools/sdk/powershell/rolepropagation/models/rolepropagationconfiginput
tags: ['SDK', 'Software Development Kit', 'Rolepropagationconfiginput', 'Rolepropagationconfiginput']
---


# Rolepropagationconfiginput

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Enabled** | **Boolean** | Indicates if the Role Change Propagation process should be enabled for the tenant | [optional] [default to $false]

## Examples

- Prepare the resource
```powershell
$Rolepropagationconfiginput = Initialize-Rolepropagationconfiginput  -Enabled true
```

- Convert the resource to JSON
```powershell
$Rolepropagationconfiginput | ConvertTo-JSON
```


[[Back to top]](#) 

