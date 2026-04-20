---
id: nerm-submit-user-profile-request
title: SubmitUserProfileRequest
pagination_label: SubmitUserProfileRequest
sidebar_label: SubmitUserProfileRequest
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'SubmitUserProfileRequest', 'NERMSubmitUserProfileRequest'] 
slug: /tools/sdk/powershell/nerm/models/submit-user-profile-request
tags: ['SDK', 'Software Development Kit', 'SubmitUserProfileRequest', 'NERMSubmitUserProfileRequest']
---


# SubmitUserProfileRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**UserProfile** | [**UserProfile1**](user-profile1) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$SubmitUserProfileRequest = Initialize-NERMSubmitUserProfileRequest  -UserProfile null
```

- Convert the resource to JSON
```powershell
$SubmitUserProfileRequest | ConvertTo-JSON
```


[[Back to top]](#) 

