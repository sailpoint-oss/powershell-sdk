---
id: approval-config-reminder-config
title: ApprovalConfigReminderConfig
pagination_label: ApprovalConfigReminderConfig
sidebar_label: ApprovalConfigReminderConfig
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'ApprovalConfigReminderConfig', 'ApprovalConfigReminderConfig'] 
slug: /tools/sdk/powershell/approvals/models/approval-config-reminder-config
tags: ['SDK', 'Software Development Kit', 'ApprovalConfigReminderConfig', 'ApprovalConfigReminderConfig']
---


# ApprovalConfigReminderConfig

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Enabled** | **Boolean** | Indicates if reminders are enabled. | [optional] [default to $false]
**DaysUntilFirstReminder** | **Int64** | Number of days until the first reminder. | [optional] 
**ReminderCronSchedule** | **String** | Cron schedule for reminders. | [optional] 
**MaxReminders** | **Int64** | Maximum number of reminders. Max is 20. | [optional] 

## Examples

- Prepare the resource
```powershell
$ApprovalConfigReminderConfig = Initialize-ApprovalConfigReminderConfig  -Enabled false `
 -DaysUntilFirstReminder 0 `
 -ReminderCronSchedule 1 1 1 1 1 `
 -MaxReminders 5
```

- Convert the resource to JSON
```powershell
$ApprovalConfigReminderConfig | ConvertTo-JSON
```


[[Back to top]](#) 

