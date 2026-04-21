---
id: nerm-create-password-reset-action-request
title: CreatePasswordResetActionRequest
pagination_label: CreatePasswordResetActionRequest
sidebar_label: CreatePasswordResetActionRequest
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'CreatePasswordResetActionRequest', 'NERMCreatePasswordResetActionRequest'] 
slug: /tools/sdk/powershell/nerm/models/create-password-reset-action-request
tags: ['SDK', 'Software Development Kit', 'CreatePasswordResetActionRequest', 'NERMCreatePasswordResetActionRequest']
---


# CreatePasswordResetActionRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**WorkflowAction** | [**PasswordResetAction**](password-reset-action) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CreatePasswordResetActionRequest = Initialize-NERMCreatePasswordResetActionRequest  -WorkflowAction null
```

- Convert the resource to JSON
```powershell
$CreatePasswordResetActionRequest | ConvertTo-JSON
```


[[Back to top]](#) 

