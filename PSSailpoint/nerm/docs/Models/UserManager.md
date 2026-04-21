---
id: nerm-user-manager
title: UserManager
pagination_label: UserManager
sidebar_label: UserManager
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'UserManager', 'NERMUserManager'] 
slug: /tools/sdk/powershell/nerm/models/user-manager
tags: ['SDK', 'Software Development Kit', 'UserManager', 'NERMUserManager']
---


# UserManager

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | [optional] [readonly] 
**Uid** | **String** |  | [optional] [readonly] 
**UserId** | **String** |  | [optional] 
**ManagerId** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$UserManager = Initialize-NERMUserManager  -Id null `
 -Uid null `
 -UserId null `
 -ManagerId null
```

- Convert the resource to JSON
```powershell
$UserManager | ConvertTo-JSON
```


[[Back to top]](#) 

