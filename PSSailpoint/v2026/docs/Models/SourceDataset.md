---
id: v2026-source-dataset
title: SourceDataset
pagination_label: SourceDataset
sidebar_label: SourceDataset
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'SourceDataset', 'V2026SourceDataset'] 
slug: /tools/sdk/powershell/v2026/models/source-dataset
tags: ['SDK', 'Software Development Kit', 'SourceDataset', 'V2026SourceDataset']
---


# SourceDataset

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | Dataset identifier. | [optional] 
**Name** | **String** | Display name of the dataset. | [optional] 
**Description** | **String** | Description of the dataset. | [optional] 
**AggregationEnabled** | **Boolean** | Whether aggregation is enabled for this dataset on the source. | [optional] [default to $false]
**Resources** | [**[]SourceDatasetResourcesInner**](source-dataset-resources-inner) | Simplified resource references associated with this dataset. | [optional] 

## Examples

- Prepare the resource
```powershell
$SourceDataset = Initialize-V2026SourceDataset  -Id cmdb-servicenow:applications `
 -Name Applications `
 -Description CMDB application records for this source. `
 -AggregationEnabled true `
 -Resources null
```

- Convert the resource to JSON
```powershell
$SourceDataset | ConvertTo-JSON
```


[[Back to top]](#) 

