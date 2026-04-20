---
id: nerm-create-set-security-question-action-request
title: CreateSetSecurityQuestionActionRequest
pagination_label: CreateSetSecurityQuestionActionRequest
sidebar_label: CreateSetSecurityQuestionActionRequest
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'CreateSetSecurityQuestionActionRequest', 'NERMCreateSetSecurityQuestionActionRequest'] 
slug: /tools/sdk/powershell/nerm/models/create-set-security-question-action-request
tags: ['SDK', 'Software Development Kit', 'CreateSetSecurityQuestionActionRequest', 'NERMCreateSetSecurityQuestionActionRequest']
---


# CreateSetSecurityQuestionActionRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**WorkflowAction** | [**SetSecurityQuestionAction**](set-security-question-action) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CreateSetSecurityQuestionActionRequest = Initialize-NERMCreateSetSecurityQuestionActionRequest  -WorkflowAction null
```

- Convert the resource to JSON
```powershell
$CreateSetSecurityQuestionActionRequest | ConvertTo-JSON
```


[[Back to top]](#) 

