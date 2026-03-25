---
id: v2026-source-sync-payload
title: SourceSyncPayload
pagination_label: SourceSyncPayload
sidebar_label: SourceSyncPayload
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'SourceSyncPayload', 'V2026SourceSyncPayload'] 
slug: /tools/sdk/powershell/v2026/models/source-sync-payload
tags: ['SDK', 'Software Development Kit', 'SourceSyncPayload', 'V2026SourceSyncPayload']
---


# SourceSyncPayload

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** | Payload type. | [required]
**DataJson** | **String** | Payload type. | [required]

## Examples

- Prepare the resource
```powershell
$SourceSyncPayload = Initialize-V2026SourceSyncPayload  -Type SYNCHRONIZE_SOURCE_ATTRIBUTES `
 -DataJson {"sourceId":"2c918083746f642c01746f990884012a"}
```

- Convert the resource to JSON
```powershell
$SourceSyncPayload | ConvertTo-JSON
```


[[Back to top]](#) 

