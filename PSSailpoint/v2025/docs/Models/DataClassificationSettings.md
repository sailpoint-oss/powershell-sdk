---
id: v2025-data-classification-settings
title: DataClassificationSettings
pagination_label: DataClassificationSettings
sidebar_label: DataClassificationSettings
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'DataClassificationSettings', 'V2025DataClassificationSettings'] 
slug: /tools/sdk/powershell/v2025/models/data-classification-settings
tags: ['SDK', 'Software Development Kit', 'DataClassificationSettings', 'V2025DataClassificationSettings']
---


# DataClassificationSettings

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**IsEnabled** | **Boolean** | Indicates whether the feature or configuration is enabled. | [optional] [default to $false]
**ClusterId** | **String** | The identifier of the cluster associated with this configuration, if applicable. | [optional] 

## Examples

- Prepare the resource
```powershell
$DataClassificationSettings = Initialize-V2025DataClassificationSettings  -IsEnabled true `
 -ClusterId cluster-001
```

- Convert the resource to JSON
```powershell
$DataClassificationSettings | ConvertTo-JSON
```


[[Back to top]](#) 

