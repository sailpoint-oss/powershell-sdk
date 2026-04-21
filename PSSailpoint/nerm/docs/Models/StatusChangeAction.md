---
id: nerm-status-change-action
title: StatusChangeAction
pagination_label: StatusChangeAction
sidebar_label: StatusChangeAction
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'StatusChangeAction', 'NERMStatusChangeAction'] 
slug: /tools/sdk/powershell/nerm/models/status-change-action
tags: ['SDK', 'Software Development Kit', 'StatusChangeAction', 'NERMStatusChangeAction']
---


# StatusChangeAction

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**WorkflowId** | **String** | The workflow the workflow action belongs to. | [required]
**Description** | **String** | The description of the workflow action. | [required]
**NewStatus** |  **Enum** [  "Active",    "Inactive",    "On Leave",    "Terminated" ] | The new status for the Status Change workflow action. | [optional] 
**Archived** | **Boolean** | If the workflow action is archived or not. | [optional] [default to $false]

## Examples

- Prepare the resource
```powershell
$StatusChangeAction = Initialize-NERMStatusChangeAction  -WorkflowId 33f072dd-13b4-41e1-8ea0-16f2a59b57c8 `
 -Description Changes the status of a non-employee. `
 -NewStatus Active `
 -Archived false
```

- Convert the resource to JSON
```powershell
$StatusChangeAction | ConvertTo-JSON
```


[[Back to top]](#) 

