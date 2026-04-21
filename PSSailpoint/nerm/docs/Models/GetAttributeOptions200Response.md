---
id: nerm-get-attribute-options200-response
title: GetAttributeOptions200Response
pagination_label: GetAttributeOptions200Response
sidebar_label: GetAttributeOptions200Response
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'GetAttributeOptions200Response', 'NERMGetAttributeOptions200Response'] 
slug: /tools/sdk/powershell/nerm/models/get-attribute-options200-response
tags: ['SDK', 'Software Development Kit', 'GetAttributeOptions200Response', 'NERMGetAttributeOptions200Response']
---


# GetAttributeOptions200Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**NeAttributeOptions** | [**[]AttributeOption**](attribute-option) |  | [optional] 
**Metadata** | [**Metadata**](metadata) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$GetAttributeOptions200Response = Initialize-NERMGetAttributeOptions200Response  -NeAttributeOptions null `
 -Metadata null
```

- Convert the resource to JSON
```powershell
$GetAttributeOptions200Response | ConvertTo-JSON
```


[[Back to top]](#) 

