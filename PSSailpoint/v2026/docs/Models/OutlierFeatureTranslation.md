---
id: v2026-outlier-feature-translation
title: OutlierFeatureTranslation
pagination_label: OutlierFeatureTranslation
sidebar_label: OutlierFeatureTranslation
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'OutlierFeatureTranslation', 'V2026OutlierFeatureTranslation'] 
slug: /tools/sdk/powershell/v2026/models/outlier-feature-translation
tags: ['SDK', 'Software Development Kit', 'OutlierFeatureTranslation', 'V2026OutlierFeatureTranslation']
---


# OutlierFeatureTranslation

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**DisplayName** | [**TranslationMessage**](translation-message) |  | [optional] 
**Description** | [**TranslationMessage**](translation-message) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$OutlierFeatureTranslation = Initialize-V2026OutlierFeatureTranslation  -DisplayName null `
 -Description null
```

- Convert the resource to JSON
```powershell
$OutlierFeatureTranslation | ConvertTo-JSON
```


[[Back to top]](#) 

