---
id: nerm-system-role
title: SystemRole
pagination_label: SystemRole
sidebar_label: SystemRole
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'SystemRole', 'NERMSystemRole'] 
slug: /tools/sdk/powershell/nerm/models/system-role
tags: ['SDK', 'Software Development Kit', 'SystemRole', 'NERMSystemRole']
---


# SystemRole

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | The unique identifier for the object | [optional] [readonly] 
**Uid** |  **Enum** [  "profile_contributor",    "profile_owner" ] | The user identifier for the object | [optional] [readonly] 
**Name** |  **Enum** [  "Profile Contributor",    "Profile Owner" ] | The name of the role | [optional] 

## Examples

- Prepare the resource
```powershell
$SystemRole = Initialize-NERMSystemRole  -Id 2e06b876-f456-473d-bd65-b6435e0b6b2d `
 -Uid profile_contributor `
 -Name Profile Contributor
```

- Convert the resource to JSON
```powershell
$SystemRole | ConvertTo-JSON
```


[[Back to top]](#) 

