---
id: nerm-profiles
title: Profiles
pagination_label: Profiles
sidebar_label: Profiles
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'Profiles', 'NERMProfiles'] 
slug: /tools/sdk/powershell/nerm/models/profiles
tags: ['SDK', 'Software Development Kit', 'Profiles', 'NERMProfiles']
---


# Profiles

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Profiles** | [**[]ModelProfile**](model-profile) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$Profiles = Initialize-NERMProfiles  -Profiles null
```

- Convert the resource to JSON
```powershell
$Profiles | ConvertTo-JSON
```


[[Back to top]](#) 

