---
id: nerm-update-form-by-id-request
title: UpdateFormByIdRequest
pagination_label: UpdateFormByIdRequest
sidebar_label: UpdateFormByIdRequest
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'UpdateFormByIdRequest', 'NERMUpdateFormByIdRequest'] 
slug: /tools/sdk/powershell/nerm/models/update-form-by-id-request
tags: ['SDK', 'Software Development Kit', 'UpdateFormByIdRequest', 'NERMUpdateFormByIdRequest']
---


# UpdateFormByIdRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Role** | [**Form1**](form1) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$UpdateFormByIdRequest = Initialize-NERMUpdateFormByIdRequest  -Role null
```

- Convert the resource to JSON
```powershell
$UpdateFormByIdRequest | ConvertTo-JSON
```


[[Back to top]](#) 

