---
id: nerm-request-action
title: RequestAction
pagination_label: RequestAction
sidebar_label: RequestAction
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'RequestAction', 'NERMRequestAction'] 
slug: /tools/sdk/powershell/nerm/models/request-action
tags: ['SDK', 'Software Development Kit', 'RequestAction', 'NERMRequestAction']
---


# RequestAction

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**WorkflowId** | **String** | The workflow the workflow action belongs to. | [required]
**Description** | **String** | The description of the workflow action. | [required]
**PageId** | **String** | The page the workflow action should render. | [optional] 
**Archived** | **Boolean** | If the workflow action is archived or not. | [optional] [default to $false]
**RequiresComment** | **Boolean** | If the workflow action requires a comment or not. | [optional] [default to $false]

## Examples

- Prepare the resource
```powershell
$RequestAction = Initialize-NERMRequestAction  -WorkflowId 33f072dd-13b4-41e1-8ea0-16f2a59b57c8 `
 -Description Provides the requester a page with forms. `
 -PageId 33f072dd-13b4-41e1-8ea0-16f2a59b57c8 `
 -Archived false `
 -RequiresComment false
```

- Convert the resource to JSON
```powershell
$RequestAction | ConvertTo-JSON
```


[[Back to top]](#) 

