---
id: nerm-close-session-action
title: CloseSessionAction
pagination_label: CloseSessionAction
sidebar_label: CloseSessionAction
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'CloseSessionAction', 'NERMCloseSessionAction'] 
slug: /tools/sdk/powershell/nerm/models/close-session-action
tags: ['SDK', 'Software Development Kit', 'CloseSessionAction', 'NERMCloseSessionAction']
---


# CloseSessionAction

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**WorkflowId** | **String** | The workflow the workflow action belongs to. | [required]
**Description** | **String** | The description of the workflow action. | [required]
**Archived** | **Boolean** | If the workflow action is archived or not. | [optional] [default to $false]

## Examples

- Prepare the resource
```powershell
$CloseSessionAction = Initialize-NERMCloseSessionAction  -WorkflowId 33f072dd-13b4-41e1-8ea0-16f2a59b57c8 `
 -Description Closes the current workflow session. `
 -Archived false
```

- Convert the resource to JSON
```powershell
$CloseSessionAction | ConvertTo-JSON
```


[[Back to top]](#) 

