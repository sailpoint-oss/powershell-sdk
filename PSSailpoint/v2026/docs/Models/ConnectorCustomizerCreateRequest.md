---
id: v2026-connector-customizer-create-request
title: ConnectorCustomizerCreateRequest
pagination_label: ConnectorCustomizerCreateRequest
sidebar_label: ConnectorCustomizerCreateRequest
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'ConnectorCustomizerCreateRequest', 'V2026ConnectorCustomizerCreateRequest'] 
slug: /tools/sdk/powershell/v2026/models/connector-customizer-create-request
tags: ['SDK', 'Software Development Kit', 'ConnectorCustomizerCreateRequest', 'V2026ConnectorCustomizerCreateRequest']
---


# ConnectorCustomizerCreateRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** | Connector customizer name. | [optional] 

## Examples

- Prepare the resource
```powershell
$ConnectorCustomizerCreateRequest = Initialize-V2026ConnectorCustomizerCreateRequest  -Name My Custom Connector
```

- Convert the resource to JSON
```powershell
$ConnectorCustomizerCreateRequest | ConvertTo-JSON
```


[[Back to top]](#) 

