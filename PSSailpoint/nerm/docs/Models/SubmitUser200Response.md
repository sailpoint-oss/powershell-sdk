---
id: nerm-submit-user200-response
title: SubmitUser200Response
pagination_label: SubmitUser200Response
sidebar_label: SubmitUser200Response
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'SubmitUser200Response', 'NERMSubmitUser200Response'] 
slug: /tools/sdk/powershell/nerm/models/submit-user200-response
tags: ['SDK', 'Software Development Kit', 'SubmitUser200Response', 'NERMSubmitUser200Response']
---


# SubmitUser200Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**User** | [**User**](user) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$SubmitUser200Response = Initialize-NERMSubmitUser200Response  -User null
```

- Convert the resource to JSON
```powershell
$SubmitUser200Response | ConvertTo-JSON
```


[[Back to top]](#) 

