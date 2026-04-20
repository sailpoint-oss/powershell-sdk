---
id: nerm-submit-roles-request
title: SubmitRolesRequest
pagination_label: SubmitRolesRequest
sidebar_label: SubmitRolesRequest
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'SubmitRolesRequest', 'NERMSubmitRolesRequest'] 
slug: /tools/sdk/powershell/nerm/models/submit-roles-request
tags: ['SDK', 'Software Development Kit', 'SubmitRolesRequest', 'NERMSubmitRolesRequest']
---


# SubmitRolesRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Roles** | [**[]Role1**](role1) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$SubmitRolesRequest = Initialize-NERMSubmitRolesRequest  -Roles null
```

- Convert the resource to JSON
```powershell
$SubmitRolesRequest | ConvertTo-JSON
```


[[Back to top]](#) 

