---
id: configuration-response
title: ConfigurationResponse
pagination_label: ConfigurationResponse
sidebar_label: ConfigurationResponse
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'ConfigurationResponse', 'ConfigurationResponse'] 
slug: /tools/sdk/powershell/workreassignment/models/configuration-response
tags: ['SDK', 'Software Development Kit', 'ConfigurationResponse', 'ConfigurationResponse']
---


# ConfigurationResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Identity** | [**Identity2**](identity2) |  | [optional] 
**ConfigDetails** | [**[]ConfigurationDetailsResponse**](configuration-details-response) | Details of how work should be reassigned for an Identity | [optional] 

## Examples

- Prepare the resource
```powershell
$ConfigurationResponse = Initialize-ConfigurationResponse  -Identity null `
 -ConfigDetails null
```

- Convert the resource to JSON
```powershell
$ConfigurationResponse | ConvertTo-JSON
```


[[Back to top]](#) 

