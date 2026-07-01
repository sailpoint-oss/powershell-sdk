---
id: inteloutliersslice
title: Inteloutliersslice
pagination_label: Inteloutliersslice
sidebar_label: Inteloutliersslice
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'Inteloutliersslice', 'Inteloutliersslice'] 
slug: /tools/sdk/powershell/intelligence/models/inteloutliersslice
tags: ['SDK', 'Software Development Kit', 'Inteloutliersslice', 'Inteloutliersslice']
---


# Inteloutliersslice

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**RareAccess** | [**Intelrareaccessslice**](intelrareaccessslice) | First page of rare access items for the identity. | [required]

## Examples

- Prepare the resource
```powershell
$Inteloutliersslice = Initialize-Inteloutliersslice  -RareAccess null
```

- Convert the resource to JSON
```powershell
$Inteloutliersslice | ConvertTo-JSON
```


[[Back to top]](#) 

