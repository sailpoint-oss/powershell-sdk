---
id: nerm-submit-users200-response
title: SubmitUsers200Response
pagination_label: SubmitUsers200Response
sidebar_label: SubmitUsers200Response
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'SubmitUsers200Response', 'NERMSubmitUsers200Response'] 
slug: /tools/sdk/powershell/nerm/models/submit-users200-response
tags: ['SDK', 'Software Development Kit', 'SubmitUsers200Response', 'NERMSubmitUsers200Response']
---


# SubmitUsers200Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Users** | [**[]User**](user) |  | [optional] 
**Info** | **String** |  | [optional] 
**JobStatus** | [**JobJobStatus**](job-job-status) |  | [optional] 
**Status** | **Int32** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$SubmitUsers200Response = Initialize-NERMSubmitUsers200Response  -Users null `
 -Info job has started `
 -JobStatus null `
 -Status 200
```

- Convert the resource to JSON
```powershell
$SubmitUsers200Response | ConvertTo-JSON
```


[[Back to top]](#) 

