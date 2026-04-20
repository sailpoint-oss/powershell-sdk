---
id: nerm-submit-role-profile-request
title: SubmitRoleProfileRequest
pagination_label: SubmitRoleProfileRequest
sidebar_label: SubmitRoleProfileRequest
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'SubmitRoleProfileRequest', 'NERMSubmitRoleProfileRequest'] 
slug: /tools/sdk/powershell/nerm/models/submit-role-profile-request
tags: ['SDK', 'Software Development Kit', 'SubmitRoleProfileRequest', 'NERMSubmitRoleProfileRequest']
---


# SubmitRoleProfileRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**RoleProfile** | [**RoleProfile1**](role-profile1) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$SubmitRoleProfileRequest = Initialize-NERMSubmitRoleProfileRequest  -RoleProfile null
```

- Convert the resource to JSON
```powershell
$SubmitRoleProfileRequest | ConvertTo-JSON
```


[[Back to top]](#) 

