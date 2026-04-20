---
id: nerm-ask-security-question-action
title: AskSecurityQuestionAction
pagination_label: AskSecurityQuestionAction
sidebar_label: AskSecurityQuestionAction
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'AskSecurityQuestionAction', 'NERMAskSecurityQuestionAction'] 
slug: /tools/sdk/powershell/nerm/models/ask-security-question-action
tags: ['SDK', 'Software Development Kit', 'AskSecurityQuestionAction', 'NERMAskSecurityQuestionAction']
---


# AskSecurityQuestionAction

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**WorkflowId** | **String** | The workflow the workflow action belongs to. | [required]
**Description** | **String** | The description of the workflow action. | [required]
**NumberOfQuestions** | **Int32** | The number of questions the user should answer upon login. | [required]
**TokenExpiration** | **Int32** | The token expiration time, coordinates with token_expiration_type. | [required]
**TokenExpirationType** |  **Enum** [  "hours",    "days",    "login attempts",    "always" ] | The token expiration type, coordinates with token_expiration. | [required]
**Archived** | **Boolean** | If the workflow action is archived or not. | [optional] [default to $false]

## Examples

- Prepare the resource
```powershell
$AskSecurityQuestionAction = Initialize-NERMAskSecurityQuestionAction  -WorkflowId 33f072dd-13b4-41e1-8ea0-16f2a59b57c8 `
 -Description Prompt the user to answer some personal security questions. `
 -NumberOfQuestions 1 `
 -TokenExpiration 1 `
 -TokenExpirationType days `
 -Archived false
```

- Convert the resource to JSON
```powershell
$AskSecurityQuestionAction | ConvertTo-JSON
```


[[Back to top]](#) 

