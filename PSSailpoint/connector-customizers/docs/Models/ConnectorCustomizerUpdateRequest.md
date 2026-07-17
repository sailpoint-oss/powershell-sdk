---
id: connector-customizer-update-request
title: ConnectorCustomizerUpdateRequest
pagination_label: ConnectorCustomizerUpdateRequest
sidebar_label: ConnectorCustomizerUpdateRequest
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'ConnectorCustomizerUpdateRequest', 'ConnectorCustomizerUpdateRequest'] 
slug: /tools/sdk/powershell/connectorcustomizers/models/connector-customizer-update-request
tags: ['SDK', 'Software Development Kit', 'ConnectorCustomizerUpdateRequest', 'ConnectorCustomizerUpdateRequest']
---


# ConnectorCustomizerUpdateRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** | Connector customizer name. | [optional] 

## Examples

- Prepare the resource
```powershell
$ConnectorCustomizerUpdateRequest = Initialize-ConnectorCustomizerUpdateRequest  -Name My Custom Connector
```

- Convert the resource to JSON
```powershell
$ConnectorCustomizerUpdateRequest | ConvertTo-JSON
```


[[Back to top]](#) 

