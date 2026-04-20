---
id: nerm-username-password-action
title: UsernamePasswordAction
pagination_label: UsernamePasswordAction
sidebar_label: UsernamePasswordAction
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'UsernamePasswordAction', 'NERMUsernamePasswordAction'] 
slug: /tools/sdk/powershell/nerm/models/username-password-action
tags: ['SDK', 'Software Development Kit', 'UsernamePasswordAction', 'NERMUsernamePasswordAction']
---


# UsernamePasswordAction

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**WorkflowId** | **String** | The workflow the workflow action belongs to. | [required]
**Description** | **String** | The description of the workflow action. | [required]
**Archived** | **Boolean** | If the workflow action is archived or not. | [optional] [default to $false]

## Examples

- Prepare the resource
```powershell
$UsernamePasswordAction = Initialize-NERMUsernamePasswordAction  -WorkflowId 33f072dd-13b4-41e1-8ea0-16f2a59b57c8 `
 -Description Prompt the user for their username and password. `
 -Archived false
```

- Convert the resource to JSON
```powershell
$UsernamePasswordAction | ConvertTo-JSON
```


[[Back to top]](#) 

