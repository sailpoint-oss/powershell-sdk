---
id: nerm-user-manager1
title: UserManager1
pagination_label: UserManager1
sidebar_label: UserManager1
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'UserManager1', 'NERMUserManager1'] 
slug: /tools/sdk/powershell/nerm/models/user-manager1
tags: ['SDK', 'Software Development Kit', 'UserManager1', 'NERMUserManager1']
---


# UserManager1

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**UserId** | **String** |  | [optional] 
**ManagerId** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$UserManager1 = Initialize-NERMUserManager1  -UserId null `
 -ManagerId null
```

- Convert the resource to JSON
```powershell
$UserManager1 | ConvertTo-JSON
```


[[Back to top]](#) 

