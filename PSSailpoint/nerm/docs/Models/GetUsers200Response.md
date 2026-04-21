---
id: nerm-get-users200-response
title: GetUsers200Response
pagination_label: GetUsers200Response
sidebar_label: GetUsers200Response
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'GetUsers200Response', 'NERMGetUsers200Response'] 
slug: /tools/sdk/powershell/nerm/models/get-users200-response
tags: ['SDK', 'Software Development Kit', 'GetUsers200Response', 'NERMGetUsers200Response']
---


# GetUsers200Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Users** | [**[]User**](user) |  | [optional] 
**Metadata** | [**Metadata**](metadata) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$GetUsers200Response = Initialize-NERMGetUsers200Response  -Users null `
 -Metadata null
```

- Convert the resource to JSON
```powershell
$GetUsers200Response | ConvertTo-JSON
```


[[Back to top]](#) 

