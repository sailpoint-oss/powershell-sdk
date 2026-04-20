---
id: nerm-submit-attribute-options200-response
title: SubmitAttributeOptions200Response
pagination_label: SubmitAttributeOptions200Response
sidebar_label: SubmitAttributeOptions200Response
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'SubmitAttributeOptions200Response', 'NERMSubmitAttributeOptions200Response'] 
slug: /tools/sdk/powershell/nerm/models/submit-attribute-options200-response
tags: ['SDK', 'Software Development Kit', 'SubmitAttributeOptions200Response', 'NERMSubmitAttributeOptions200Response']
---


# SubmitAttributeOptions200Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**NeAttributeOptions** | [**[]AttributeOption**](attribute-option) |  | [optional] 
**Info** | **String** |  | [optional] 
**JobStatus** | [**JobJobStatus**](job-job-status) |  | [optional] 
**Status** | **Int32** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$SubmitAttributeOptions200Response = Initialize-NERMSubmitAttributeOptions200Response  -NeAttributeOptions null `
 -Info job has started `
 -JobStatus null `
 -Status 200
```

- Convert the resource to JSON
```powershell
$SubmitAttributeOptions200Response | ConvertTo-JSON
```


[[Back to top]](#) 

