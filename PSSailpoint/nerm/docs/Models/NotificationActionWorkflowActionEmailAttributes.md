---
id: nerm-notification-action-workflow-action-email-attributes
title: NotificationActionWorkflowActionEmailAttributes
pagination_label: NotificationActionWorkflowActionEmailAttributes
sidebar_label: NotificationActionWorkflowActionEmailAttributes
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'NotificationActionWorkflowActionEmailAttributes', 'NERMNotificationActionWorkflowActionEmailAttributes'] 
slug: /tools/sdk/powershell/nerm/models/notification-action-workflow-action-email-attributes
tags: ['SDK', 'Software Development Kit', 'NotificationActionWorkflowActionEmailAttributes', 'NERMNotificationActionWorkflowActionEmailAttributes']
---


# NotificationActionWorkflowActionEmailAttributes

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | the id. | [optional] 
**WorkflowActionId** | **String** | the id of the workflow action. | [optional] 
**EmailId** | **String** | the id of the email. | [optional] 
**Type** |  **Enum** [  "StandardEmail" ] | the type of email. | [optional] 

## Examples

- Prepare the resource
```powershell
$NotificationActionWorkflowActionEmailAttributes = Initialize-NERMNotificationActionWorkflowActionEmailAttributes  -Id 33f072dd-13b4-41e1-8ea0-16f2a59b57c8 `
 -WorkflowActionId 33f072dd-13b4-41e1-8ea0-16f2a59b57c8 `
 -EmailId 33f072dd-13b4-41e1-8ea0-16f2a59b57c8 `
 -Type StandardEmail
```

- Convert the resource to JSON
```powershell
$NotificationActionWorkflowActionEmailAttributes | ConvertTo-JSON
```


[[Back to top]](#) 

