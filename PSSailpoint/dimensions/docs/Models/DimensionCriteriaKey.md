---
id: dimension-criteria-key
title: DimensionCriteriaKey
pagination_label: DimensionCriteriaKey
sidebar_label: DimensionCriteriaKey
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'DimensionCriteriaKey', 'DimensionCriteriaKey'] 
slug: /tools/sdk/powershell/dimensions/models/dimension-criteria-key
tags: ['SDK', 'Software Development Kit', 'DimensionCriteriaKey', 'DimensionCriteriaKey']
---


# DimensionCriteriaKey

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **DimensionCriteriaKeyType** |  | [required]
**Property** | **String** | The name of the identity attribute to which the associated criteria applies. | [required]

## Examples

- Prepare the resource
```powershell
$DimensionCriteriaKey = Initialize-DimensionCriteriaKey  -Type null `
 -Property attribute.email
```

- Convert the resource to JSON
```powershell
$DimensionCriteriaKey | ConvertTo-JSON
```


[[Back to top]](#) 

