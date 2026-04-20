---
id: nerm-password-reset-action
title: PasswordResetAction
pagination_label: PasswordResetAction
sidebar_label: PasswordResetAction
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'PasswordResetAction', 'NERMPasswordResetAction'] 
slug: /tools/sdk/powershell/nerm/models/password-reset-action
tags: ['SDK', 'Software Development Kit', 'PasswordResetAction', 'NERMPasswordResetAction']
---


# PasswordResetAction

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**WorkflowId** | **String** | The workflow the workflow action belongs to. | [required]
**Description** | **String** | The description of the workflow action. | [required]
**Archived** | **Boolean** | If the workflow action is archived or not. | [optional] [default to $false]

## Examples

- Prepare the resource
```powershell
$PasswordResetAction = Initialize-NERMPasswordResetAction  -WorkflowId 33f072dd-13b4-41e1-8ea0-16f2a59b57c8 `
 -Description Prompt the user to reset their password. `
 -Archived false
```

- Convert the resource to JSON
```powershell
$PasswordResetAction | ConvertTo-JSON
```


[[Back to top]](#) 

