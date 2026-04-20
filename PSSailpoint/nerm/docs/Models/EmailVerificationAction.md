---
id: nerm-email-verification-action
title: EmailVerificationAction
pagination_label: EmailVerificationAction
sidebar_label: EmailVerificationAction
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'EmailVerificationAction', 'NERMEmailVerificationAction'] 
slug: /tools/sdk/powershell/nerm/models/email-verification-action
tags: ['SDK', 'Software Development Kit', 'EmailVerificationAction', 'NERMEmailVerificationAction']
---


# EmailVerificationAction

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**WorkflowId** | **String** | The workflow the workflow action belongs to. | [required]
**Description** | **String** | The description of the workflow action. | [required]
**EmailExpiration** | **Int32** | The email expiration time, in minutes. | [required]
**TokenExpiration** | **Int32** | The token expiration time, coordinates with token_expiration_type. | [required]
**TokenExpirationType** |  **Enum** [  "hours",    "days",    "login attempts",    "always" ] | The token expiration type, coordinates with token_expiration. | [required]
**Archived** | **Boolean** | If the workflow action is archived or not. | [optional] [default to $false]

## Examples

- Prepare the resource
```powershell
$EmailVerificationAction = Initialize-NERMEmailVerificationAction  -WorkflowId 33f072dd-13b4-41e1-8ea0-16f2a59b57c8 `
 -Description Have the user verify their email address. `
 -EmailExpiration 20 `
 -TokenExpiration 1 `
 -TokenExpirationType days `
 -Archived false
```

- Convert the resource to JSON
```powershell
$EmailVerificationAction | ConvertTo-JSON
```


[[Back to top]](#) 

