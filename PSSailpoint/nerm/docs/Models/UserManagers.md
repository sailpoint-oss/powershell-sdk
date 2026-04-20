---
id: nerm-user-managers
title: UserManagers
pagination_label: UserManagers
sidebar_label: UserManagers
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'UserManagers', 'NERMUserManagers'] 
slug: /tools/sdk/powershell/nerm/models/user-managers
tags: ['SDK', 'Software Development Kit', 'UserManagers', 'NERMUserManagers']
---


# UserManagers

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**UserManagers** | [**[]UserManager**](user-manager) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$UserManagers = Initialize-NERMUserManagers  -UserManagers null
```

- Convert the resource to JSON
```powershell
$UserManagers | ConvertTo-JSON
```


[[Back to top]](#) 

