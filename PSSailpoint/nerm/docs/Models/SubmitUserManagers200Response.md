---
id: nerm-submit-user-managers200-response
title: SubmitUserManagers200Response
pagination_label: SubmitUserManagers200Response
sidebar_label: SubmitUserManagers200Response
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'SubmitUserManagers200Response', 'NERMSubmitUserManagers200Response'] 
slug: /tools/sdk/powershell/nerm/models/submit-user-managers200-response
tags: ['SDK', 'Software Development Kit', 'SubmitUserManagers200Response', 'NERMSubmitUserManagers200Response']
---


# SubmitUserManagers200Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Info** | **String** |  | [optional] 
**JobStatus** | [**JobJobStatus**](job-job-status) |  | [optional] 
**Status** | **Int32** |  | [optional] 
**UserManagers** | [**[]UserManager**](user-manager) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$SubmitUserManagers200Response = Initialize-NERMSubmitUserManagers200Response  -Info job has started `
 -JobStatus null `
 -Status 200 `
 -UserManagers null
```

- Convert the resource to JSON
```powershell
$SubmitUserManagers200Response | ConvertTo-JSON
```


[[Back to top]](#) 

