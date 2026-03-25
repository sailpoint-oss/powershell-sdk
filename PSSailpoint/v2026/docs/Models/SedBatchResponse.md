---
id: v2026-sed-batch-response
title: SedBatchResponse
pagination_label: SedBatchResponse
sidebar_label: SedBatchResponse
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'SedBatchResponse', 'V2026SedBatchResponse'] 
slug: /tools/sdk/powershell/v2026/models/sed-batch-response
tags: ['SDK', 'Software Development Kit', 'SedBatchResponse', 'V2026SedBatchResponse']
---


# SedBatchResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**BatchId** | **String** | BatchId that groups all the ids together | [optional] 

## Examples

- Prepare the resource
```powershell
$SedBatchResponse = Initialize-V2026SedBatchResponse  -BatchId 016629d1-1d25-463f-97f3-0c6686846650
```

- Convert the resource to JSON
```powershell
$SedBatchResponse | ConvertTo-JSON
```


[[Back to top]](#) 

