---
id: nerm-invitation-action-workflow-action-email-attributes
title: InvitationActionWorkflowActionEmailAttributes
pagination_label: InvitationActionWorkflowActionEmailAttributes
sidebar_label: InvitationActionWorkflowActionEmailAttributes
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'InvitationActionWorkflowActionEmailAttributes', 'NERMInvitationActionWorkflowActionEmailAttributes'] 
slug: /tools/sdk/powershell/nerm/models/invitation-action-workflow-action-email-attributes
tags: ['SDK', 'Software Development Kit', 'InvitationActionWorkflowActionEmailAttributes', 'NERMInvitationActionWorkflowActionEmailAttributes']
---


# InvitationActionWorkflowActionEmailAttributes

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | the id. | [optional] 
**WorkflowActionId** | **String** | the id of the workflow action. | [optional] 
**EmailId** | **String** | the id of the email. | [optional] 
**Type** |  **Enum** [  "StandardEmail",    "PerformerNotificationEmail",    "ApprovalEmail",    "RejectionEmail" ] | the type of email. | [optional] 

## Examples

- Prepare the resource
```powershell
$InvitationActionWorkflowActionEmailAttributes = Initialize-NERMInvitationActionWorkflowActionEmailAttributes  -Id 33f072dd-13b4-41e1-8ea0-16f2a59b57c8 `
 -WorkflowActionId 33f072dd-13b4-41e1-8ea0-16f2a59b57c8 `
 -EmailId 33f072dd-13b4-41e1-8ea0-16f2a59b57c8 `
 -Type StandardEmail
```

- Convert the resource to JSON
```powershell
$InvitationActionWorkflowActionEmailAttributes | ConvertTo-JSON
```


[[Back to top]](#) 

