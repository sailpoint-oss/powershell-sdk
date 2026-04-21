---
id: nerm-create-profile-select-action-request
title: CreateProfileSelectActionRequest
pagination_label: CreateProfileSelectActionRequest
sidebar_label: CreateProfileSelectActionRequest
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'CreateProfileSelectActionRequest', 'NERMCreateProfileSelectActionRequest'] 
slug: /tools/sdk/powershell/nerm/models/create-profile-select-action-request
tags: ['SDK', 'Software Development Kit', 'CreateProfileSelectActionRequest', 'NERMCreateProfileSelectActionRequest']
---


# CreateProfileSelectActionRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**WorkflowAction** | [**ProfileSelectAction**](profile-select-action) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CreateProfileSelectActionRequest = Initialize-NERMCreateProfileSelectActionRequest  -WorkflowAction null
```

- Convert the resource to JSON
```powershell
$CreateProfileSelectActionRequest | ConvertTo-JSON
```


[[Back to top]](#) 

