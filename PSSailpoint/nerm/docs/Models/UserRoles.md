---
id: nerm-user-roles
title: UserRoles
pagination_label: UserRoles
sidebar_label: UserRoles
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'UserRoles', 'NERMUserRoles'] 
slug: /tools/sdk/powershell/nerm/models/user-roles
tags: ['SDK', 'Software Development Kit', 'UserRoles', 'NERMUserRoles']
---


# UserRoles

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**UserRoles** | [**[]UserRole**](user-role) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$UserRoles = Initialize-NERMUserRoles  -UserRoles null
```

- Convert the resource to JSON
```powershell
$UserRoles | ConvertTo-JSON
```


[[Back to top]](#) 

