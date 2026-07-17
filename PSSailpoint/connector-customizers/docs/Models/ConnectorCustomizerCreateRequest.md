---
id: connector-customizer-create-request
title: ConnectorCustomizerCreateRequest
pagination_label: ConnectorCustomizerCreateRequest
sidebar_label: ConnectorCustomizerCreateRequest
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'ConnectorCustomizerCreateRequest', 'ConnectorCustomizerCreateRequest'] 
slug: /tools/sdk/powershell/connectorcustomizers/models/connector-customizer-create-request
tags: ['SDK', 'Software Development Kit', 'ConnectorCustomizerCreateRequest', 'ConnectorCustomizerCreateRequest']
---


# ConnectorCustomizerCreateRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** | Connector customizer name. | [optional] 

## Examples

- Prepare the resource
```powershell
$ConnectorCustomizerCreateRequest = Initialize-ConnectorCustomizerCreateRequest  -Name My Custom Connector
```

- Convert the resource to JSON
```powershell
$ConnectorCustomizerCreateRequest | ConvertTo-JSON
```


[[Back to top]](#) 

