---
id: nerm-workflow-action
title: WorkflowAction
pagination_label: WorkflowAction
sidebar_label: WorkflowAction
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'WorkflowAction', 'NERMWorkflowAction'] 
slug: /tools/sdk/powershell/nerm/models/workflow-action
tags: ['SDK', 'Software Development Kit', 'WorkflowAction', 'NERMWorkflowAction']
---


# WorkflowAction

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**WorkflowId** | **String** | The workflow the workflow action belongs to. | [required]
**Description** | **String** | The description of the workflow action. | [optional] 
**PageId** | **String** | The page the workflow action should render. | [required]
**AddRequesterAsOwner** | **Boolean** | If the requester should be added as the owner of the profile to be created. | [optional] [default to $true]
**EmailAttributeId** | **String** | The attribute storing the email address for the workflow action. | [optional] 
**EmailAddresses** | **[]String** | The email addresses for the workflow action. | [optional] 
**NewStatus** | **String** | The new status for the Status Change workflow action. | [optional] 
**Archived** | **Boolean** | If the workflow action is archived or not. | [optional] [default to $false]
**Skippable** | **Boolean** | If the workflow action is skippable or not. | [optional] [default to $false]
**RequiresComment** | **Boolean** | If the workflow action requires a comment or not. | [optional] [default to $false]

## Examples

- Prepare the resource
```powershell
$WorkflowAction = Initialize-NERMWorkflowAction  -WorkflowId 33f072dd-13b4-41e1-8ea0-16f2a59b57c8 `
 -Description Require approval from another user or a group of users with a specific role. `
 -PageId 33f072dd-13b4-41e1-8ea0-16f2a59b57c8 `
 -AddRequesterAsOwner true `
 -EmailAttributeId 33f072dd-13b4-41e1-8ea0-16f2a59b57c8 `
 -EmailAddresses [johndoe@gmail.com, janedoe@gmail.com] `
 -NewStatus Active, Inactive, On Leave, Terminated `
 -Archived false `
 -Skippable false `
 -RequiresComment false
```

- Convert the resource to JSON
```powershell
$WorkflowAction | ConvertTo-JSON
```


[[Back to top]](#) 

