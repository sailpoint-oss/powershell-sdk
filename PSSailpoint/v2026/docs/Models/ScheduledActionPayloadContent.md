---
id: v2026-scheduled-action-payload-content
title: ScheduledActionPayloadContent
pagination_label: ScheduledActionPayloadContent
sidebar_label: ScheduledActionPayloadContent
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'ScheduledActionPayloadContent', 'V2026ScheduledActionPayloadContent'] 
slug: /tools/sdk/powershell/v2026/models/scheduled-action-payload-content
tags: ['SDK', 'Software Development Kit', 'ScheduledActionPayloadContent', 'V2026ScheduledActionPayloadContent']
---


# ScheduledActionPayloadContent

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** | Name of the scheduled action (maximum 50 characters). | [required]
**BackupOptions** | [**ScheduledActionPayloadContentBackupOptions**](scheduled-action-payload-content-backup-options) |  | [optional] 
**SourceBackupId** | **String** | ID of the source backup. Required for CREATE_DRAFT jobs. | [optional] 
**SourceTenant** | **String** | Source tenant identifier. Required for CREATE_DRAFT jobs. | [optional] 
**DraftId** | **String** | ID of the draft to be deployed. Required for CONFIG_DEPLOY_DRAFT jobs. | [optional] 

## Examples

- Prepare the resource
```powershell
$ScheduledActionPayloadContent = Initialize-V2026ScheduledActionPayloadContent  -Name Daily Backup `
 -BackupOptions null `
 -SourceBackupId 5678b87d-48ca-439a-868f-2160001da8c2 `
 -SourceTenant tenant-name `
 -DraftId 9012b87d-48ca-439a-868f-2160001da8c3
```

- Convert the resource to JSON
```powershell
$ScheduledActionPayloadContent | ConvertTo-JSON
```


[[Back to top]](#) 

