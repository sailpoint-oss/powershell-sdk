---
id: nerm-notification-action
title: NotificationAction
pagination_label: NotificationAction
sidebar_label: NotificationAction
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'NotificationAction', 'NERMNotificationAction'] 
slug: /tools/sdk/powershell/nerm/models/notification-action
tags: ['SDK', 'Software Development Kit', 'NotificationAction', 'NERMNotificationAction']
---


# NotificationAction

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**WorkflowId** | **String** | The workflow the workflow action belongs to. | [required]
**Description** | **String** | The description of the workflow action. | [required]
**EmailAttributeId** | **String** | The attribute storing the email address for the workflow action. | [optional] 
**EmailAddresses** | **[]String** | The email addresses for the workflow action. | [optional] 
**Archived** | **Boolean** | If the workflow action is archived or not. | [optional] [default to $false]
**WorkflowActionEmailAttributes** | [**NotificationActionWorkflowActionEmailAttributes**](notification-action-workflow-action-email-attributes) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$NotificationAction = Initialize-NERMNotificationAction  -WorkflowId 33f072dd-13b4-41e1-8ea0-16f2a59b57c8 `
 -Description Send a notification to a group of users. `
 -EmailAttributeId 33f072dd-13b4-41e1-8ea0-16f2a59b57c8 `
 -EmailAddresses [johndoe@gmail.com, janedoe@gmail.com] `
 -Archived false `
 -WorkflowActionEmailAttributes null
```

- Convert the resource to JSON
```powershell
$NotificationAction | ConvertTo-JSON
```


[[Back to top]](#) 

