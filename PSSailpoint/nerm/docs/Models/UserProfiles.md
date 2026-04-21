---
id: nerm-user-profiles
title: UserProfiles
pagination_label: UserProfiles
sidebar_label: UserProfiles
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'UserProfiles', 'NERMUserProfiles'] 
slug: /tools/sdk/powershell/nerm/models/user-profiles
tags: ['SDK', 'Software Development Kit', 'UserProfiles', 'NERMUserProfiles']
---


# UserProfiles

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**UserProfiles** | [**[]UserProfile**](user-profile) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$UserProfiles = Initialize-NERMUserProfiles  -UserProfiles null
```

- Convert the resource to JSON
```powershell
$UserProfiles | ConvertTo-JSON
```


[[Back to top]](#) 

