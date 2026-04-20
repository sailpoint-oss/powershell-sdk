---
id: nerm-update-profile-request
title: UpdateProfileRequest
pagination_label: UpdateProfileRequest
sidebar_label: UpdateProfileRequest
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'UpdateProfileRequest', 'NERMUpdateProfileRequest'] 
slug: /tools/sdk/powershell/nerm/models/update-profile-request
tags: ['SDK', 'Software Development Kit', 'UpdateProfileRequest', 'NERMUpdateProfileRequest']
---


# UpdateProfileRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarProfile** | [**UpdateProfileRequestProfile**](update-profile-request-profile) |  | [required]

## Examples

- Prepare the resource
```powershell
$UpdateProfileRequest = Initialize-NERMUpdateProfileRequest  -VarProfile null
```

- Convert the resource to JSON
```powershell
$UpdateProfileRequest | ConvertTo-JSON
```


[[Back to top]](#) 

