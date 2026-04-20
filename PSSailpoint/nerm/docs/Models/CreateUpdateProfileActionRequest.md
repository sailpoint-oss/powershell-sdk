---
id: nerm-create-update-profile-action-request
title: CreateUpdateProfileActionRequest
pagination_label: CreateUpdateProfileActionRequest
sidebar_label: CreateUpdateProfileActionRequest
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'CreateUpdateProfileActionRequest', 'NERMCreateUpdateProfileActionRequest'] 
slug: /tools/sdk/powershell/nerm/models/create-update-profile-action-request
tags: ['SDK', 'Software Development Kit', 'CreateUpdateProfileActionRequest', 'NERMCreateUpdateProfileActionRequest']
---


# CreateUpdateProfileActionRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**WorkflowAction** | [**UpdateProfileAction**](update-profile-action) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CreateUpdateProfileActionRequest = Initialize-NERMCreateUpdateProfileActionRequest  -WorkflowAction null
```

- Convert the resource to JSON
```powershell
$CreateUpdateProfileActionRequest | ConvertTo-JSON
```


[[Back to top]](#) 

