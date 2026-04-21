---
id: nerm-submit-user-role-request
title: SubmitUserRoleRequest
pagination_label: SubmitUserRoleRequest
sidebar_label: SubmitUserRoleRequest
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'SubmitUserRoleRequest', 'NERMSubmitUserRoleRequest'] 
slug: /tools/sdk/powershell/nerm/models/submit-user-role-request
tags: ['SDK', 'Software Development Kit', 'SubmitUserRoleRequest', 'NERMSubmitUserRoleRequest']
---


# SubmitUserRoleRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**UserRole** | [**UserRole1**](user-role1) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$SubmitUserRoleRequest = Initialize-NERMSubmitUserRoleRequest  -UserRole null
```

- Convert the resource to JSON
```powershell
$SubmitUserRoleRequest | ConvertTo-JSON
```


[[Back to top]](#) 

