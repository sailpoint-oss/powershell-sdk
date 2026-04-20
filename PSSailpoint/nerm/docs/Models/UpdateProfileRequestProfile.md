---
id: nerm-update-profile-request-profile
title: UpdateProfileRequestProfile
pagination_label: UpdateProfileRequestProfile
sidebar_label: UpdateProfileRequestProfile
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'UpdateProfileRequestProfile', 'NERMUpdateProfileRequestProfile'] 
slug: /tools/sdk/powershell/nerm/models/update-profile-request-profile
tags: ['SDK', 'Software Development Kit', 'UpdateProfileRequestProfile', 'NERMUpdateProfileRequestProfile']
---


# UpdateProfileRequestProfile

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Attributes** | [**map[string]AnyType**]https://learn.microsoft.com/en-us/powershell/scripting/lang-spec/chapter-04?view=powershell-7.4 | schema-mapped attributes to be updated | [optional] 

## Examples

- Prepare the resource
```powershell
$UpdateProfileRequestProfile = Initialize-NERMUpdateProfileRequestProfile  -Attributes null
```

- Convert the resource to JSON
```powershell
$UpdateProfileRequestProfile | ConvertTo-JSON
```


[[Back to top]](#) 

