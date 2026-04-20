---
id: nerm-update-profile-action
title: UpdateProfileAction
pagination_label: UpdateProfileAction
sidebar_label: UpdateProfileAction
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'UpdateProfileAction', 'NERMUpdateProfileAction'] 
slug: /tools/sdk/powershell/nerm/models/update-profile-action
tags: ['SDK', 'Software Development Kit', 'UpdateProfileAction', 'NERMUpdateProfileAction']
---


# UpdateProfileAction

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**WorkflowId** | **String** | The workflow the workflow action belongs to. | [required]
**Description** | **String** | The description of the workflow action. | [required]
**Archived** | **Boolean** | If the workflow action is archived or not. | [optional] [default to $false]

## Examples

- Prepare the resource
```powershell
$UpdateProfileAction = Initialize-NERMUpdateProfileAction  -WorkflowId 33f072dd-13b4-41e1-8ea0-16f2a59b57c8 `
 -Description Updates a profile with all attributes collected during the workflow. `
 -Archived false
```

- Convert the resource to JSON
```powershell
$UpdateProfileAction | ConvertTo-JSON
```


[[Back to top]](#) 

