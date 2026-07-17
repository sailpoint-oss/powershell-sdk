---
id: configuration-item-response
title: ConfigurationItemResponse
pagination_label: ConfigurationItemResponse
sidebar_label: ConfigurationItemResponse
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'ConfigurationItemResponse', 'ConfigurationItemResponse'] 
slug: /tools/sdk/powershell/workreassignment/models/configuration-item-response
tags: ['SDK', 'Software Development Kit', 'ConfigurationItemResponse', 'ConfigurationItemResponse']
---


# ConfigurationItemResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Identity** | [**Identity2**](identity2) |  | [optional] 
**ConfigDetails** | [**[]ConfigurationDetailsResponse**](configuration-details-response) | Details of how work should be reassigned for an Identity | [optional] 

## Examples

- Prepare the resource
```powershell
$ConfigurationItemResponse = Initialize-ConfigurationItemResponse  -Identity null `
 -ConfigDetails null
```

- Convert the resource to JSON
```powershell
$ConfigurationItemResponse | ConvertTo-JSON
```


[[Back to top]](#) 

