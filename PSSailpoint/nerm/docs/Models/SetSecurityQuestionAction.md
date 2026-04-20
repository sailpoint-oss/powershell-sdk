---
id: nerm-set-security-question-action
title: SetSecurityQuestionAction
pagination_label: SetSecurityQuestionAction
sidebar_label: SetSecurityQuestionAction
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'SetSecurityQuestionAction', 'NERMSetSecurityQuestionAction'] 
slug: /tools/sdk/powershell/nerm/models/set-security-question-action
tags: ['SDK', 'Software Development Kit', 'SetSecurityQuestionAction', 'NERMSetSecurityQuestionAction']
---


# SetSecurityQuestionAction

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**WorkflowId** | **String** | The workflow the workflow action belongs to. | [required]
**Description** | **String** | The description of the workflow action. | [required]
**Archived** | **Boolean** | If the workflow action is archived or not. | [optional] [default to $false]
**NumberOfQuestions** | **Int32** | The number of questions the user should answer upon login. | [required]

## Examples

- Prepare the resource
```powershell
$SetSecurityQuestionAction = Initialize-NERMSetSecurityQuestionAction  -WorkflowId 33f072dd-13b4-41e1-8ea0-16f2a59b57c8 `
 -Description Prompt the user to provide some personal security questions and answers. `
 -Archived false `
 -NumberOfQuestions 1
```

- Convert the resource to JSON
```powershell
$SetSecurityQuestionAction | ConvertTo-JSON
```


[[Back to top]](#) 

