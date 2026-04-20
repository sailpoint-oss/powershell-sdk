---
id: nerm-submit-user-role200-response
title: SubmitUserRole200Response
pagination_label: SubmitUserRole200Response
sidebar_label: SubmitUserRole200Response
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'SubmitUserRole200Response', 'NERMSubmitUserRole200Response'] 
slug: /tools/sdk/powershell/nerm/models/submit-user-role200-response
tags: ['SDK', 'Software Development Kit', 'SubmitUserRole200Response', 'NERMSubmitUserRole200Response']
---


# SubmitUserRole200Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**UserRole** | [**UserRole**](user-role) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$SubmitUserRole200Response = Initialize-NERMSubmitUserRole200Response  -UserRole null
```

- Convert the resource to JSON
```powershell
$SubmitUserRole200Response | ConvertTo-JSON
```


[[Back to top]](#) 

