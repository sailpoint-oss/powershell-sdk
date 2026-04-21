---
id: nerm-submit-user-roles200-response
title: SubmitUserRoles200Response
pagination_label: SubmitUserRoles200Response
sidebar_label: SubmitUserRoles200Response
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'SubmitUserRoles200Response', 'NERMSubmitUserRoles200Response'] 
slug: /tools/sdk/powershell/nerm/models/submit-user-roles200-response
tags: ['SDK', 'Software Development Kit', 'SubmitUserRoles200Response', 'NERMSubmitUserRoles200Response']
---


# SubmitUserRoles200Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**UserRoles** | [**[]UserRole**](user-role) |  | [optional] 
**Info** | **String** |  | [optional] 
**JobStatus** | [**JobJobStatus**](job-job-status) |  | [optional] 
**Status** | **Int32** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$SubmitUserRoles200Response = Initialize-NERMSubmitUserRoles200Response  -UserRoles null `
 -Info job has started `
 -JobStatus null `
 -Status 200
```

- Convert the resource to JSON
```powershell
$SubmitUserRoles200Response | ConvertTo-JSON
```


[[Back to top]](#) 

