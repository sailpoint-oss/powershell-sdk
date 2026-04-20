---
id: nerm-user-role
title: UserRole
pagination_label: UserRole
sidebar_label: UserRole
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'UserRole', 'NERMUserRole'] 
slug: /tools/sdk/powershell/nerm/models/user-role
tags: ['SDK', 'Software Development Kit', 'UserRole', 'NERMUserRole']
---


# UserRole

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | [optional] [readonly] 
**Uid** | **String** |  | [optional] [readonly] 
**UserId** | **String** |  | [optional] 
**RoleId** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$UserRole = Initialize-NERMUserRole  -Id null `
 -Uid null `
 -UserId null `
 -RoleId null
```

- Convert the resource to JSON
```powershell
$UserRole | ConvertTo-JSON
```


[[Back to top]](#) 

