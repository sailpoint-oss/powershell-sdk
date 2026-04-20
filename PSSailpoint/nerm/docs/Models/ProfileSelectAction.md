---
id: nerm-profile-select-action
title: ProfileSelectAction
pagination_label: ProfileSelectAction
sidebar_label: ProfileSelectAction
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'ProfileSelectAction', 'NERMProfileSelectAction'] 
slug: /tools/sdk/powershell/nerm/models/profile-select-action
tags: ['SDK', 'Software Development Kit', 'ProfileSelectAction', 'NERMProfileSelectAction']
---


# ProfileSelectAction

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**WorkflowId** | **String** | The workflow the workflow action belongs to. | [required]
**Description** | **String** | The description of the workflow action. | [required]
**Archived** | **Boolean** | If the workflow action is archived or not. | [optional] [default to $false]

## Examples

- Prepare the resource
```powershell
$ProfileSelectAction = Initialize-NERMProfileSelectAction  -WorkflowId 33f072dd-13b4-41e1-8ea0-16f2a59b57c8 `
 -Description Select the profiles that you want to run this workflow for. `
 -Archived false
```

- Convert the resource to JSON
```powershell
$ProfileSelectAction | ConvertTo-JSON
```


[[Back to top]](#) 

