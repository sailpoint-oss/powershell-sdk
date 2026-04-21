---
id: nerm-create-notification-action-request
title: CreateNotificationActionRequest
pagination_label: CreateNotificationActionRequest
sidebar_label: CreateNotificationActionRequest
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'CreateNotificationActionRequest', 'NERMCreateNotificationActionRequest'] 
slug: /tools/sdk/powershell/nerm/models/create-notification-action-request
tags: ['SDK', 'Software Development Kit', 'CreateNotificationActionRequest', 'NERMCreateNotificationActionRequest']
---


# CreateNotificationActionRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**WorkflowAction** | [**NotificationAction**](notification-action) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CreateNotificationActionRequest = Initialize-NERMCreateNotificationActionRequest  -WorkflowAction null
```

- Convert the resource to JSON
```powershell
$CreateNotificationActionRequest | ConvertTo-JSON
```


[[Back to top]](#) 

