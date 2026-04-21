---
id: nerm-delete-profiles200-response
title: DeleteProfiles200Response
pagination_label: DeleteProfiles200Response
sidebar_label: DeleteProfiles200Response
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'DeleteProfiles200Response', 'NERMDeleteProfiles200Response'] 
slug: /tools/sdk/powershell/nerm/models/delete-profiles200-response
tags: ['SDK', 'Software Development Kit', 'DeleteProfiles200Response', 'NERMDeleteProfiles200Response']
---


# DeleteProfiles200Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Profiles** | [**[]ModelProfile**](model-profile) |  | [optional] 
**Info** | **String** |  | [optional] 
**JobStatus** | [**JobJobStatus**](job-job-status) |  | [optional] 
**Status** | **Int32** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$DeleteProfiles200Response = Initialize-NERMDeleteProfiles200Response  -Profiles null `
 -Info job has started `
 -JobStatus null `
 -Status 200
```

- Convert the resource to JSON
```powershell
$DeleteProfiles200Response | ConvertTo-JSON
```


[[Back to top]](#) 

