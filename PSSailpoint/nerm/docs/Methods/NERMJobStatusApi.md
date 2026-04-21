---
id: nerm-job-status
title: JobStatus
pagination_label: JobStatus
sidebar_label: JobStatus
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'JobStatus', 'NERMJobStatus'] 
slug: /tools/sdk/powershell/nerm/methods/job-status
tags: ['SDK', 'Software Development Kit', 'JobStatus', 'NERMJobStatus']
---

# JobStatus
   
  

All URIs are relative to *https://acmeco.nonemployee.com/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Get-NERMJobStatus**](#get-job-status) | **GET** `/job_status` | Get bulk job status


## get-job-status
Retrieve the status of a bulk job

[API Spec](https://developer.sailpoint.com/docs/api//get-job-status)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
  Query | JobId | **String** | True  | The id of the job returned from a POST or PATCH endpoint that resulted in a job being created

### Return type
[**GetJobStatus200Response**](../models/get-job-status200-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Expected response to a valid request | GetJobStatus200Response
400 | Bad Request - unable to complete. | GetAttributes400Response
500 | Internal Server Error - returned on unhandled exceptions. | GetAttributes500Response

### HTTP request headers
- **Content-Type**: Not defined
- **Accept**: application/json

### Example
```powershell
$JobId = "c5e1dd38-7e29-464f-a0da-0c0d886d022a" # String | The id of the job returned from a POST or PATCH endpoint that resulted in a job being created

# Get bulk job status

try {
    Get-NERMJobStatus -JobId $JobId 
    
    # Below is a request that includes all optional parameters
    # Get-NERMJobStatus -JobId $JobId  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Get-NERMJobStatus"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 
