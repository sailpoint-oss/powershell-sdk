---
id: v2026-put-connector-correlation-config-request
title: PutConnectorCorrelationConfigRequest
pagination_label: PutConnectorCorrelationConfigRequest
sidebar_label: PutConnectorCorrelationConfigRequest
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'PutConnectorCorrelationConfigRequest', 'V2026PutConnectorCorrelationConfigRequest'] 
slug: /tools/sdk/powershell/v2026/models/put-connector-correlation-config-request
tags: ['SDK', 'Software Development Kit', 'PutConnectorCorrelationConfigRequest', 'V2026PutConnectorCorrelationConfigRequest']
---


# PutConnectorCorrelationConfigRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**File** | **System.IO.FileInfo** | connector correlation config xml file | [required]

## Examples

- Prepare the resource
```powershell
$PutConnectorCorrelationConfigRequest = Initialize-V2026PutConnectorCorrelationConfigRequest  -File null
```

- Convert the resource to JSON
```powershell
$PutConnectorCorrelationConfigRequest | ConvertTo-JSON
```


[[Back to top]](#) 

