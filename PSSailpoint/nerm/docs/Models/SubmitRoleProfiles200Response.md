---
id: nerm-submit-role-profiles200-response
title: SubmitRoleProfiles200Response
pagination_label: SubmitRoleProfiles200Response
sidebar_label: SubmitRoleProfiles200Response
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'SubmitRoleProfiles200Response', 'NERMSubmitRoleProfiles200Response'] 
slug: /tools/sdk/powershell/nerm/models/submit-role-profiles200-response
tags: ['SDK', 'Software Development Kit', 'SubmitRoleProfiles200Response', 'NERMSubmitRoleProfiles200Response']
---


# SubmitRoleProfiles200Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**RoleProfiles** | [**[]RoleProfile**](role-profile) |  | [optional] 
**Info** | **String** |  | [optional] 
**JobStatus** | [**JobJobStatus**](job-job-status) |  | [optional] 
**Status** | **Int32** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$SubmitRoleProfiles200Response = Initialize-NERMSubmitRoleProfiles200Response  -RoleProfiles null `
 -Info job has started `
 -JobStatus null `
 -Status 200
```

- Convert the resource to JSON
```powershell
$SubmitRoleProfiles200Response | ConvertTo-JSON
```


[[Back to top]](#) 

