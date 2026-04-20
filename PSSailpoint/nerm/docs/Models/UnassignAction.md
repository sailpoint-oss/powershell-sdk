---
id: nerm-unassign-action
title: UnassignAction
pagination_label: UnassignAction
sidebar_label: UnassignAction
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'UnassignAction', 'NERMUnassignAction'] 
slug: /tools/sdk/powershell/nerm/models/unassign-action
tags: ['SDK', 'Software Development Kit', 'UnassignAction', 'NERMUnassignAction']
---


# UnassignAction

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**WorkflowId** | **String** | The workflow the workflow action belongs to. | [required]
**Description** | **String** | The description of the workflow action. | [required]
**Archived** | **Boolean** | If the workflow action is archived or not. | [optional] [default to $false]

## Examples

- Prepare the resource
```powershell
$UnassignAction = Initialize-NERMUnassignAction  -WorkflowId 33f072dd-13b4-41e1-8ea0-16f2a59b57c8 `
 -Description Un-assigns roles from a profile. `
 -Archived false
```

- Convert the resource to JSON
```powershell
$UnassignAction | ConvertTo-JSON
```


[[Back to top]](#) 

