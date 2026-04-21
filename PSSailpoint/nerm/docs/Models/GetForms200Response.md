---
id: nerm-get-forms200-response
title: GetForms200Response
pagination_label: GetForms200Response
sidebar_label: GetForms200Response
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'GetForms200Response', 'NERMGetForms200Response'] 
slug: /tools/sdk/powershell/nerm/models/get-forms200-response
tags: ['SDK', 'Software Development Kit', 'GetForms200Response', 'NERMGetForms200Response']
---


# GetForms200Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Forms** | [**[]Form**](form) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$GetForms200Response = Initialize-NERMGetForms200Response  -Forms null
```

- Convert the resource to JSON
```powershell
$GetForms200Response | ConvertTo-JSON
```


[[Back to top]](#) 

