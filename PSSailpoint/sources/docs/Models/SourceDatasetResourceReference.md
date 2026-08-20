---
id: source-dataset-resource-reference
title: SourceDatasetResourceReference
pagination_label: SourceDatasetResourceReference
sidebar_label: SourceDatasetResourceReference
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'SourceDatasetResourceReference', 'SourceDatasetResourceReference'] 
slug: /tools/sdk/powershell/sources/models/source-dataset-resource-reference
tags: ['SDK', 'Software Development Kit', 'SourceDatasetResourceReference', 'SourceDatasetResourceReference']
---


# SourceDatasetResourceReference

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | Resource identifier. | [optional] 
**Name** | **String** | Display name of the resource. | [optional] 
**Type** | **String** | Resource type from source schema config. | [optional] 

## Examples

- Prepare the resource
```powershell
$SourceDatasetResourceReference = Initialize-SourceDatasetResourceReference  -Id aws:iam-role `
 -Name Role `
 -Type std:resource
```

- Convert the resource to JSON
```powershell
$SourceDatasetResourceReference | ConvertTo-JSON
```


[[Back to top]](#) 

