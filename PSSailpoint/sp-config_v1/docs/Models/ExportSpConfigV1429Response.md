---
id: export-sp-config-v1429-response
title: ExportSpConfigV1429Response
pagination_label: ExportSpConfigV1429Response
sidebar_label: ExportSpConfigV1429Response
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'ExportSpConfigV1429Response', 'ExportSpConfigV1429Response'] 
slug: /tools/sdk/powershell/spconfigv1/models/export-sp-config-v1429-response
tags: ['SDK', 'Software Development Kit', 'ExportSpConfigV1429Response', 'ExportSpConfigV1429Response']
---


# ExportSpConfigV1429Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Message** | [**AnyType**](any-type) | A message describing the error | [optional] 

## Examples

- Prepare the resource
```powershell
$ExportSpConfigV1429Response = Initialize-ExportSpConfigV1429Response  -Message  Rate Limit Exceeded 
```

- Convert the resource to JSON
```powershell
$ExportSpConfigV1429Response | ConvertTo-JSON
```


[[Back to top]](#) 

