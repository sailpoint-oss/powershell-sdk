---
id: nerm-create-profile-type-role-request
title: CreateProfileTypeRoleRequest
pagination_label: CreateProfileTypeRoleRequest
sidebar_label: CreateProfileTypeRoleRequest
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'CreateProfileTypeRoleRequest', 'NERMCreateProfileTypeRoleRequest'] 
slug: /tools/sdk/powershell/nerm/models/create-profile-type-role-request
tags: ['SDK', 'Software Development Kit', 'CreateProfileTypeRoleRequest', 'NERMCreateProfileTypeRoleRequest']
---


# CreateProfileTypeRoleRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ProfileTypeRole** | [**ProfileTypeRoles1**](profile-type-roles1) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CreateProfileTypeRoleRequest = Initialize-NERMCreateProfileTypeRoleRequest  -ProfileTypeRole null
```

- Convert the resource to JSON
```powershell
$CreateProfileTypeRoleRequest | ConvertTo-JSON
```


[[Back to top]](#) 

