---
id: v2026-source-dataset-resource
title: SourceDatasetResource
pagination_label: SourceDatasetResource
sidebar_label: SourceDatasetResource
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'SourceDatasetResource', 'V2026SourceDatasetResource'] 
slug: /tools/sdk/powershell/v2026/models/source-dataset-resource
tags: ['SDK', 'Software Development Kit', 'SourceDatasetResource', 'V2026SourceDatasetResource']
---


# SourceDatasetResource

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | Resource identifier from source schema config. | [optional] 
**Name** | **String** | Display name of the resource. | [optional] 
**Features** | **[]String** | Feature identifiers supported by this resource. | [optional] 
**Type** | **String** | Resource type from source schema config. | [optional] 
**Schema** | [**Schema**](schema) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$SourceDatasetResource = Initialize-V2026SourceDatasetResource  -Id aws:iam-role `
 -Name Account `
 -Features [Create, Delete] `
 -Type std:resource `
 -Schema null
```

- Convert the resource to JSON
```powershell
$SourceDatasetResource | ConvertTo-JSON
```


[[Back to top]](#) 

