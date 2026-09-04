---
id: outlier-detected
title: OutlierDetected
pagination_label: OutlierDetected
sidebar_label: OutlierDetected
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'OutlierDetected', 'OutlierDetected'] 
slug: /tools/sdk/powershell/triggers/models/outlier-detected
tags: ['SDK', 'Software Development Kit', 'OutlierDetected', 'OutlierDetected']
---


# OutlierDetected

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Identity** | [**OutlierDetectedIdentity**](outlier-detected-identity) |  | [required]
**OutlierType** |  **Enum** [  "LOW_SIMILARITY" ] | Identity's outlier type. | [required]
**Score** | **Decimal** | Dissimilarity score that determines whether the identity is an outlier, ranging from `0.0` to `1.0`. The higher the score, the more likely the identity is an outlier. | [required]

## Examples

- Prepare the resource
```powershell
$OutlierDetected = Initialize-OutlierDetected  -Identity null `
 -OutlierType LOW_SIMILARITY `
 -Score 0.82
```

- Convert the resource to JSON
```powershell
$OutlierDetected | ConvertTo-JSON
```


[[Back to top]](#) 

