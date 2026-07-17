---
id: scheduled-action-response-content-backup-options-object-options-value
title: ScheduledActionResponseContentBackupOptionsObjectOptionsValue
pagination_label: ScheduledActionResponseContentBackupOptionsObjectOptionsValue
sidebar_label: ScheduledActionResponseContentBackupOptionsObjectOptionsValue
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'ScheduledActionResponseContentBackupOptionsObjectOptionsValue', 'ScheduledActionResponseContentBackupOptionsObjectOptionsValue'] 
slug: /tools/sdk/powershell/configurationhub/models/scheduled-action-response-content-backup-options-object-options-value
tags: ['SDK', 'Software Development Kit', 'ScheduledActionResponseContentBackupOptionsObjectOptionsValue', 'ScheduledActionResponseContentBackupOptionsObjectOptionsValue']
---


# ScheduledActionResponseContentBackupOptionsObjectOptionsValue

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**IncludedNames** | **[]String** | Set of names to be included. | [optional] 

## Examples

- Prepare the resource
```powershell
$ScheduledActionResponseContentBackupOptionsObjectOptionsValue = Initialize-ScheduledActionResponseContentBackupOptionsObjectOptionsValue  -IncludedNames ["Admin Role","User Role"]
```

- Convert the resource to JSON
```powershell
$ScheduledActionResponseContentBackupOptionsObjectOptionsValue | ConvertTo-JSON
```


[[Back to top]](#) 

