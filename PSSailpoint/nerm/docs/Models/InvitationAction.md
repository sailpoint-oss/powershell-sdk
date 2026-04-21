---
id: nerm-invitation-action
title: InvitationAction
pagination_label: InvitationAction
sidebar_label: InvitationAction
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'InvitationAction', 'NERMInvitationAction'] 
slug: /tools/sdk/powershell/nerm/models/invitation-action
tags: ['SDK', 'Software Development Kit', 'InvitationAction', 'NERMInvitationAction']
---


# InvitationAction

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**WorkflowId** | **String** | The workflow the workflow action belongs to. | [required]
**Description** | **String** | The description of the workflow action. | [required]
**Archived** | **Boolean** | If the workflow action is archived or not. | [optional] [default to $false]
**ConfigurationAttributes** | [**InvitationActionConfigurationAttributes**](invitation-action-configuration-attributes) |  | [optional] 
**WorkflowActionEmailAttributes** | [**InvitationActionWorkflowActionEmailAttributes**](invitation-action-workflow-action-email-attributes) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$InvitationAction = Initialize-NERMInvitationAction  -WorkflowId 33f072dd-13b4-41e1-8ea0-16f2a59b57c8 `
 -Description Creates a registration session associated with an email address `
 -Archived false `
 -ConfigurationAttributes null `
 -WorkflowActionEmailAttributes null
```

- Convert the resource to JSON
```powershell
$InvitationAction | ConvertTo-JSON
```


[[Back to top]](#) 

