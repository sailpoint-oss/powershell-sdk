---
id: nerm-get-job-status200-response
title: GetJobStatus200Response
pagination_label: GetJobStatus200Response
sidebar_label: GetJobStatus200Response
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'GetJobStatus200Response', 'NERMGetJobStatus200Response'] 
slug: /tools/sdk/powershell/nerm/models/get-job-status200-response
tags: ['SDK', 'Software Development Kit', 'GetJobStatus200Response', 'NERMGetJobStatus200Response']
---


# GetJobStatus200Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Uid** | **String** |  | [optional] 
**Status** | **String** |  | [optional] 
**JobType** | **String** |  | [optional] 
**JobData** | [**[]GetJobStatus200ResponseJobDataInner**](get-job-status200-response-job-data-inner) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$GetJobStatus200Response = Initialize-NERMGetJobStatus200Response  -Uid null `
 -Status complete `
 -JobType import `
 -JobData null
```

- Convert the resource to JSON
```powershell
$GetJobStatus200Response | ConvertTo-JSON
```


[[Back to top]](#) 

