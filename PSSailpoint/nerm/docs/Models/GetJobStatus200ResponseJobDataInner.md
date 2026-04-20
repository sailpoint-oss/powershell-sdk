---
id: nerm-get-job-status200-response-job-data-inner
title: GetJobStatus200ResponseJobDataInner
pagination_label: GetJobStatus200ResponseJobDataInner
sidebar_label: GetJobStatus200ResponseJobDataInner
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'GetJobStatus200ResponseJobDataInner', 'NERMGetJobStatus200ResponseJobDataInner'] 
slug: /tools/sdk/powershell/nerm/models/get-job-status200-response-job-data-inner
tags: ['SDK', 'Software Development Kit', 'GetJobStatus200ResponseJobDataInner', 'NERMGetJobStatus200ResponseJobDataInner']
---


# GetJobStatus200ResponseJobDataInner

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**UserId** | **String** |  | [optional] 
**ManagerId** | **String** |  | [optional] 
**Errors** | **[]String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$GetJobStatus200ResponseJobDataInner = Initialize-NERMGetJobStatus200ResponseJobDataInner  -UserId null `
 -ManagerId null `
 -Errors null
```

- Convert the resource to JSON
```powershell
$GetJobStatus200ResponseJobDataInner | ConvertTo-JSON
```


[[Back to top]](#) 

