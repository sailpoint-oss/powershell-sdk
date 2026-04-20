---
id: nerm-approval-action
title: ApprovalAction
pagination_label: ApprovalAction
sidebar_label: ApprovalAction
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'ApprovalAction', 'NERMApprovalAction'] 
slug: /tools/sdk/powershell/nerm/models/approval-action
tags: ['SDK', 'Software Development Kit', 'ApprovalAction', 'NERMApprovalAction']
---


# ApprovalAction

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**WorkflowId** | **String** | The workflow the workflow action belongs to. | [required]
**Description** | **String** | The description of the workflow action. | [optional] 
**PageId** | **String** | The page the workflow action should render. | [required]
**Archived** | **Boolean** | If the workflow action is archived or not. | [optional] [default to $false]
**Skippable** | **Boolean** | If the workflow action is skippable or not. | [optional] [default to $false]
**RequiresComment** | **Boolean** | If the workflow action requires a comment or not. | [optional] [default to $false]

## Examples

- Prepare the resource
```powershell
$ApprovalAction = Initialize-NERMApprovalAction  -WorkflowId 33f072dd-13b4-41e1-8ea0-16f2a59b57c8 `
 -Description Require approval from another user or a group of users with a specific role. `
 -PageId 33f072dd-13b4-41e1-8ea0-16f2a59b57c8 `
 -Archived false `
 -Skippable false `
 -RequiresComment false
```

- Convert the resource to JSON
```powershell
$ApprovalAction | ConvertTo-JSON
```


[[Back to top]](#) 

