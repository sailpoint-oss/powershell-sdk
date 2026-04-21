---
id: nerm-create-email-verification-action-request
title: CreateEmailVerificationActionRequest
pagination_label: CreateEmailVerificationActionRequest
sidebar_label: CreateEmailVerificationActionRequest
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'CreateEmailVerificationActionRequest', 'NERMCreateEmailVerificationActionRequest'] 
slug: /tools/sdk/powershell/nerm/models/create-email-verification-action-request
tags: ['SDK', 'Software Development Kit', 'CreateEmailVerificationActionRequest', 'NERMCreateEmailVerificationActionRequest']
---


# CreateEmailVerificationActionRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**WorkflowAction** | [**EmailVerificationAction**](email-verification-action) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CreateEmailVerificationActionRequest = Initialize-NERMCreateEmailVerificationActionRequest  -WorkflowAction null
```

- Convert the resource to JSON
```powershell
$CreateEmailVerificationActionRequest | ConvertTo-JSON
```


[[Back to top]](#) 

