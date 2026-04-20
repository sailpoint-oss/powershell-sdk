---
id: nerm-create-create-profile-action-request
title: CreateCreateProfileActionRequest
pagination_label: CreateCreateProfileActionRequest
sidebar_label: CreateCreateProfileActionRequest
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'CreateCreateProfileActionRequest', 'NERMCreateCreateProfileActionRequest'] 
slug: /tools/sdk/powershell/nerm/models/create-create-profile-action-request
tags: ['SDK', 'Software Development Kit', 'CreateCreateProfileActionRequest', 'NERMCreateCreateProfileActionRequest']
---


# CreateCreateProfileActionRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**WorkflowAction** | [**CreateProfileAction**](create-profile-action) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CreateCreateProfileActionRequest = Initialize-NERMCreateCreateProfileActionRequest  -WorkflowAction null
```

- Convert the resource to JSON
```powershell
$CreateCreateProfileActionRequest | ConvertTo-JSON
```


[[Back to top]](#) 

