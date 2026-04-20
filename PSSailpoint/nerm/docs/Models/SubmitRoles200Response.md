---
id: nerm-submit-roles200-response
title: SubmitRoles200Response
pagination_label: SubmitRoles200Response
sidebar_label: SubmitRoles200Response
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'SubmitRoles200Response', 'NERMSubmitRoles200Response'] 
slug: /tools/sdk/powershell/nerm/models/submit-roles200-response
tags: ['SDK', 'Software Development Kit', 'SubmitRoles200Response', 'NERMSubmitRoles200Response']
---


# SubmitRoles200Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Roles** | [**[]Role**](role) |  | [optional] 
**Info** | **String** |  | [optional] 
**JobStatus** | [**JobJobStatus**](job-job-status) |  | [optional] 
**Status** | **Int32** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$SubmitRoles200Response = Initialize-NERMSubmitRoles200Response  -Roles null `
 -Info job has started `
 -JobStatus null `
 -Status 200
```

- Convert the resource to JSON
```powershell
$SubmitRoles200Response | ConvertTo-JSON
```


[[Back to top]](#) 

