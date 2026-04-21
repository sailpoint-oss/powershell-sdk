---
id: nerm-create-profiles-request
title: CreateProfilesRequest
pagination_label: CreateProfilesRequest
sidebar_label: CreateProfilesRequest
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'CreateProfilesRequest', 'NERMCreateProfilesRequest'] 
slug: /tools/sdk/powershell/nerm/models/create-profiles-request
tags: ['SDK', 'Software Development Kit', 'CreateProfilesRequest', 'NERMCreateProfilesRequest']
---


# CreateProfilesRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Profiles** | [**[]Profile1**](profile1) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CreateProfilesRequest = Initialize-NERMCreateProfilesRequest  -Profiles null
```

- Convert the resource to JSON
```powershell
$CreateProfilesRequest | ConvertTo-JSON
```


[[Back to top]](#) 

