---
id: v2026-source-dataset-resources-inner
title: SourceDatasetResourcesInner
pagination_label: SourceDatasetResourcesInner
sidebar_label: SourceDatasetResourcesInner
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'SourceDatasetResourcesInner', 'V2026SourceDatasetResourcesInner'] 
slug: /tools/sdk/powershell/v2026/models/source-dataset-resources-inner
tags: ['SDK', 'Software Development Kit', 'SourceDatasetResourcesInner', 'V2026SourceDatasetResourcesInner']
---


# SourceDatasetResourcesInner

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | Resource identifier. | [optional] 
**Name** | **String** | Display name of the resource. | [optional] 

## Examples

- Prepare the resource
```powershell
$SourceDatasetResourcesInner = Initialize-V2026SourceDatasetResourcesInner  -Id aws:iam-role `
 -Name Role
```

- Convert the resource to JSON
```powershell
$SourceDatasetResourcesInner | ConvertTo-JSON
```


[[Back to top]](#) 

