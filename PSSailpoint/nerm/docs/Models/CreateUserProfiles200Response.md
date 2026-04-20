---
id: nerm-create-user-profiles200-response
title: CreateUserProfiles200Response
pagination_label: CreateUserProfiles200Response
sidebar_label: CreateUserProfiles200Response
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'CreateUserProfiles200Response', 'NERMCreateUserProfiles200Response'] 
slug: /tools/sdk/powershell/nerm/models/create-user-profiles200-response
tags: ['SDK', 'Software Development Kit', 'CreateUserProfiles200Response', 'NERMCreateUserProfiles200Response']
---


# CreateUserProfiles200Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**UserProfiles** | [**[]UserProfile**](user-profile) |  | [optional] 
**Info** | **String** |  | [optional] 
**JobStatus** | [**JobJobStatus**](job-job-status) |  | [optional] 
**Status** | **Int32** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CreateUserProfiles200Response = Initialize-NERMCreateUserProfiles200Response  -UserProfiles null `
 -Info job has started `
 -JobStatus null `
 -Status 200
```

- Convert the resource to JSON
```powershell
$CreateUserProfiles200Response | ConvertTo-JSON
```


[[Back to top]](#) 

