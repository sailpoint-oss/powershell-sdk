---
id: nerm-create-username-password-action-request
title: CreateUsernamePasswordActionRequest
pagination_label: CreateUsernamePasswordActionRequest
sidebar_label: CreateUsernamePasswordActionRequest
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'CreateUsernamePasswordActionRequest', 'NERMCreateUsernamePasswordActionRequest'] 
slug: /tools/sdk/powershell/nerm/models/create-username-password-action-request
tags: ['SDK', 'Software Development Kit', 'CreateUsernamePasswordActionRequest', 'NERMCreateUsernamePasswordActionRequest']
---


# CreateUsernamePasswordActionRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**WorkflowAction** | [**UsernamePasswordAction**](username-password-action) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CreateUsernamePasswordActionRequest = Initialize-NERMCreateUsernamePasswordActionRequest  -WorkflowAction null
```

- Convert the resource to JSON
```powershell
$CreateUsernamePasswordActionRequest | ConvertTo-JSON
```


[[Back to top]](#) 

