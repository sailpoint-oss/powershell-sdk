---
id: nerm-create-profile-page-request
title: CreateProfilePageRequest
pagination_label: CreateProfilePageRequest
sidebar_label: CreateProfilePageRequest
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'CreateProfilePageRequest', 'NERMCreateProfilePageRequest'] 
slug: /tools/sdk/powershell/nerm/models/create-profile-page-request
tags: ['SDK', 'Software Development Kit', 'CreateProfilePageRequest', 'NERMCreateProfilePageRequest']
---


# CreateProfilePageRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Page** | [**ProfilePage**](profile-page) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CreateProfilePageRequest = Initialize-NERMCreateProfilePageRequest  -Page null
```

- Convert the resource to JSON
```powershell
$CreateProfilePageRequest | ConvertTo-JSON
```


[[Back to top]](#) 

