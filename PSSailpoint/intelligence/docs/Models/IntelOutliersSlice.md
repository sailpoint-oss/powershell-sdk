---
id: intel-outliers-slice
title: IntelOutliersSlice
pagination_label: IntelOutliersSlice
sidebar_label: IntelOutliersSlice
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'IntelOutliersSlice', 'IntelOutliersSlice'] 
slug: /tools/sdk/powershell/intelligence/models/intel-outliers-slice
tags: ['SDK', 'Software Development Kit', 'IntelOutliersSlice', 'IntelOutliersSlice']
---


# IntelOutliersSlice

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**RareAccess** | [**IntelRareAccessSlice**](intel-rare-access-slice) | First page of rare access items for the identity. | [required]

## Examples

- Prepare the resource
```powershell
$IntelOutliersSlice = Initialize-IntelOutliersSlice  -RareAccess null
```

- Convert the resource to JSON
```powershell
$IntelOutliersSlice | ConvertTo-JSON
```


[[Back to top]](#) 

