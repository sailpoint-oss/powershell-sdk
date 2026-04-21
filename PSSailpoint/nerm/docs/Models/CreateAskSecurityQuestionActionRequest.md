---
id: nerm-create-ask-security-question-action-request
title: CreateAskSecurityQuestionActionRequest
pagination_label: CreateAskSecurityQuestionActionRequest
sidebar_label: CreateAskSecurityQuestionActionRequest
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'CreateAskSecurityQuestionActionRequest', 'NERMCreateAskSecurityQuestionActionRequest'] 
slug: /tools/sdk/powershell/nerm/models/create-ask-security-question-action-request
tags: ['SDK', 'Software Development Kit', 'CreateAskSecurityQuestionActionRequest', 'NERMCreateAskSecurityQuestionActionRequest']
---


# CreateAskSecurityQuestionActionRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**WorkflowAction** | [**AskSecurityQuestionAction**](ask-security-question-action) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CreateAskSecurityQuestionActionRequest = Initialize-NERMCreateAskSecurityQuestionActionRequest  -WorkflowAction null
```

- Convert the resource to JSON
```powershell
$CreateAskSecurityQuestionActionRequest | ConvertTo-JSON
```


[[Back to top]](#) 

