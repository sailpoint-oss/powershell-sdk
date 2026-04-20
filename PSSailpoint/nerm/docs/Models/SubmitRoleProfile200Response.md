---
id: nerm-submit-role-profile200-response
title: SubmitRoleProfile200Response
pagination_label: SubmitRoleProfile200Response
sidebar_label: SubmitRoleProfile200Response
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'SubmitRoleProfile200Response', 'NERMSubmitRoleProfile200Response'] 
slug: /tools/sdk/powershell/nerm/models/submit-role-profile200-response
tags: ['SDK', 'Software Development Kit', 'SubmitRoleProfile200Response', 'NERMSubmitRoleProfile200Response']
---


# SubmitRoleProfile200Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**RoleProfile** | [**RoleProfile**](role-profile) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$SubmitRoleProfile200Response = Initialize-NERMSubmitRoleProfile200Response  -RoleProfile null
```

- Convert the resource to JSON
```powershell
$SubmitRoleProfile200Response | ConvertTo-JSON
```


[[Back to top]](#) 

