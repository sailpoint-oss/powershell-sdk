---
id: nerm-job-job-status
title: JobJobStatus
pagination_label: JobJobStatus
sidebar_label: JobJobStatus
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'JobJobStatus', 'NERMJobJobStatus'] 
slug: /tools/sdk/powershell/nerm/models/job-job-status
tags: ['SDK', 'Software Development Kit', 'JobJobStatus', 'NERMJobJobStatus']
---


# JobJobStatus

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**JobId** | **String** |  | [optional] 
**Status** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$JobJobStatus = Initialize-NERMJobJobStatus  -JobId 3ce88e47ad6dba2ddf349d21 `
 -Status queued
```

- Convert the resource to JSON
```powershell
$JobJobStatus | ConvertTo-JSON
```


[[Back to top]](#) 

