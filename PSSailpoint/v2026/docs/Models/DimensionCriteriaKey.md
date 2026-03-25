---
id: v2026-dimension-criteria-key
title: DimensionCriteriaKey
pagination_label: DimensionCriteriaKey
sidebar_label: DimensionCriteriaKey
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'DimensionCriteriaKey', 'V2026DimensionCriteriaKey'] 
slug: /tools/sdk/powershell/v2026/models/dimension-criteria-key
tags: ['SDK', 'Software Development Kit', 'DimensionCriteriaKey', 'V2026DimensionCriteriaKey']
---


# DimensionCriteriaKey

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | [**DimensionCriteriaKeyType**](dimension-criteria-key-type) |  | [required]
**Property** | **String** | The name of the identity attribute to which the associated criteria applies. | [required]

## Examples

- Prepare the resource
```powershell
$DimensionCriteriaKey = Initialize-V2026DimensionCriteriaKey  -Type null `
 -Property attribute.email
```

- Convert the resource to JSON
```powershell
$DimensionCriteriaKey | ConvertTo-JSON
```


[[Back to top]](#) 

