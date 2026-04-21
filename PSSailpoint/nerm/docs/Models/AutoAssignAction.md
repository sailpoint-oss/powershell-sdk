---
id: nerm-auto-assign-action
title: AutoAssignAction
pagination_label: AutoAssignAction
sidebar_label: AutoAssignAction
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'AutoAssignAction', 'NERMAutoAssignAction'] 
slug: /tools/sdk/powershell/nerm/models/auto-assign-action
tags: ['SDK', 'Software Development Kit', 'AutoAssignAction', 'NERMAutoAssignAction']
---


# AutoAssignAction

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**WorkflowId** | **String** | The workflow the workflow action belongs to. | [required]
**Description** | **String** | The description of the workflow action. | [required]
**Archived** | **Boolean** | If the workflow action is archived or not. | [optional] [default to $false]
**ContributorAttr** | **String** | The id of the contributor attribute for contributors from another profile. If workflow_action_roles are not associated to this object, this is required. | [optional] 

## Examples

- Prepare the resource
```powershell
$AutoAssignAction = Initialize-NERMAutoAssignAction  -WorkflowId 33f072dd-13b4-41e1-8ea0-16f2a59b57c8 `
 -Description Automatically assigns contributors to this profile. `
 -Archived false `
 -ContributorAttr 33f072dd-13b4-41e1-8ea0-16f2a59b57c8
```

- Convert the resource to JSON
```powershell
$AutoAssignAction | ConvertTo-JSON
```


[[Back to top]](#) 

