---
id: nerm-create-profile-check-action-request
title: CreateProfileCheckActionRequest
pagination_label: CreateProfileCheckActionRequest
sidebar_label: CreateProfileCheckActionRequest
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'CreateProfileCheckActionRequest', 'NERMCreateProfileCheckActionRequest'] 
slug: /tools/sdk/powershell/nerm/models/create-profile-check-action-request
tags: ['SDK', 'Software Development Kit', 'CreateProfileCheckActionRequest', 'NERMCreateProfileCheckActionRequest']
---


# CreateProfileCheckActionRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**WorkflowAction** | [**ProfileCheckAction**](profile-check-action) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CreateProfileCheckActionRequest = Initialize-NERMCreateProfileCheckActionRequest  -WorkflowAction null
```

- Convert the resource to JSON
```powershell
$CreateProfileCheckActionRequest | ConvertTo-JSON
```


[[Back to top]](#) 

