---
id: nerm-create-profile-action
title: CreateProfileAction
pagination_label: CreateProfileAction
sidebar_label: CreateProfileAction
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'CreateProfileAction', 'NERMCreateProfileAction'] 
slug: /tools/sdk/powershell/nerm/models/create-profile-action
tags: ['SDK', 'Software Development Kit', 'CreateProfileAction', 'NERMCreateProfileAction']
---


# CreateProfileAction

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**WorkflowId** | **String** | The workflow the workflow action belongs to. | [required]
**Description** | **String** | The description of the workflow action. | [required]
**AddRequesterAsOwner** | **Boolean** | If the requester should be added as the owner of the profile to be created. | [optional] [default to $true]
**Archived** | **Boolean** | If the workflow action is archived or not. | [optional] [default to $false]

## Examples

- Prepare the resource
```powershell
$CreateProfileAction = Initialize-NERMCreateProfileAction  -WorkflowId 33f072dd-13b4-41e1-8ea0-16f2a59b57c8 `
 -Description Creates a profile with all attributes collected during the workflow. `
 -AddRequesterAsOwner true `
 -Archived false
```

- Convert the resource to JSON
```powershell
$CreateProfileAction | ConvertTo-JSON
```


[[Back to top]](#) 

