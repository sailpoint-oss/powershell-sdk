---
id: nerm-create-user-profiles-request
title: CreateUserProfilesRequest
pagination_label: CreateUserProfilesRequest
sidebar_label: CreateUserProfilesRequest
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'CreateUserProfilesRequest', 'NERMCreateUserProfilesRequest'] 
slug: /tools/sdk/powershell/nerm/models/create-user-profiles-request
tags: ['SDK', 'Software Development Kit', 'CreateUserProfilesRequest', 'NERMCreateUserProfilesRequest']
---


# CreateUserProfilesRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**UserProfiles** | [**[]UserProfile1**](user-profile1) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CreateUserProfilesRequest = Initialize-NERMCreateUserProfilesRequest  -UserProfiles null
```

- Convert the resource to JSON
```powershell
$CreateUserProfilesRequest | ConvertTo-JSON
```


[[Back to top]](#) 

