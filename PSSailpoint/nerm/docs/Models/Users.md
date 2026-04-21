---
id: nerm-users
title: Users
pagination_label: Users
sidebar_label: Users
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'Users', 'NERMUsers'] 
slug: /tools/sdk/powershell/nerm/models/users
tags: ['SDK', 'Software Development Kit', 'Users', 'NERMUsers']
---


# Users

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Users** | [**[]User**](user) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$Users = Initialize-NERMUsers  -Users null
```

- Convert the resource to JSON
```powershell
$Users | ConvertTo-JSON
```


[[Back to top]](#) 

