---
id: nerm-submit-user-roles-request
title: SubmitUserRolesRequest
pagination_label: SubmitUserRolesRequest
sidebar_label: SubmitUserRolesRequest
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'SubmitUserRolesRequest', 'NERMSubmitUserRolesRequest'] 
slug: /tools/sdk/powershell/nerm/models/submit-user-roles-request
tags: ['SDK', 'Software Development Kit', 'SubmitUserRolesRequest', 'NERMSubmitUserRolesRequest']
---


# SubmitUserRolesRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**UserRoles** | [**[]UserRole1**](user-role1) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$SubmitUserRolesRequest = Initialize-NERMSubmitUserRolesRequest  -UserRoles null
```

- Convert the resource to JSON
```powershell
$SubmitUserRolesRequest | ConvertTo-JSON
```


[[Back to top]](#) 

