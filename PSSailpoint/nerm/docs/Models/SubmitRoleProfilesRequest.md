---
id: nerm-submit-role-profiles-request
title: SubmitRoleProfilesRequest
pagination_label: SubmitRoleProfilesRequest
sidebar_label: SubmitRoleProfilesRequest
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'SubmitRoleProfilesRequest', 'NERMSubmitRoleProfilesRequest'] 
slug: /tools/sdk/powershell/nerm/models/submit-role-profiles-request
tags: ['SDK', 'Software Development Kit', 'SubmitRoleProfilesRequest', 'NERMSubmitRoleProfilesRequest']
---


# SubmitRoleProfilesRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**RoleProfiles** | [**[]RoleProfile1**](role-profile1) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$SubmitRoleProfilesRequest = Initialize-NERMSubmitRoleProfilesRequest  -RoleProfiles null
```

- Convert the resource to JSON
```powershell
$SubmitRoleProfilesRequest | ConvertTo-JSON
```


[[Back to top]](#) 

