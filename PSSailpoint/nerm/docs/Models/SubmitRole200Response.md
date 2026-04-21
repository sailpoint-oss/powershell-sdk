---
id: nerm-submit-role200-response
title: SubmitRole200Response
pagination_label: SubmitRole200Response
sidebar_label: SubmitRole200Response
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'SubmitRole200Response', 'NERMSubmitRole200Response'] 
slug: /tools/sdk/powershell/nerm/models/submit-role200-response
tags: ['SDK', 'Software Development Kit', 'SubmitRole200Response', 'NERMSubmitRole200Response']
---


# SubmitRole200Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Role** | [**Role**](role) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$SubmitRole200Response = Initialize-NERMSubmitRole200Response  -Role null
```

- Convert the resource to JSON
```powershell
$SubmitRole200Response | ConvertTo-JSON
```


[[Back to top]](#) 

