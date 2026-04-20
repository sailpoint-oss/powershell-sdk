---
id: nerm-submit-role-request
title: SubmitRoleRequest
pagination_label: SubmitRoleRequest
sidebar_label: SubmitRoleRequest
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'SubmitRoleRequest', 'NERMSubmitRoleRequest'] 
slug: /tools/sdk/powershell/nerm/models/submit-role-request
tags: ['SDK', 'Software Development Kit', 'SubmitRoleRequest', 'NERMSubmitRoleRequest']
---


# SubmitRoleRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Role** | [**Role1**](role1) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$SubmitRoleRequest = Initialize-NERMSubmitRoleRequest  -Role null
```

- Convert the resource to JSON
```powershell
$SubmitRoleRequest | ConvertTo-JSON
```


[[Back to top]](#) 

