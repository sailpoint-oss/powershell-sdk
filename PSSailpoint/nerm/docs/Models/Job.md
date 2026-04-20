---
id: nerm-job
title: Job
pagination_label: Job
sidebar_label: Job
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'Job', 'NERMJob'] 
slug: /tools/sdk/powershell/nerm/models/job
tags: ['SDK', 'Software Development Kit', 'Job', 'NERMJob']
---


# Job

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Info** | **String** |  | [optional] 
**JobStatus** | [**JobJobStatus**](job-job-status) |  | [optional] 
**Status** | **Int32** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$Job = Initialize-NERMJob  -Info job has started `
 -JobStatus null `
 -Status 200
```

- Convert the resource to JSON
```powershell
$Job | ConvertTo-JSON
```


[[Back to top]](#) 

