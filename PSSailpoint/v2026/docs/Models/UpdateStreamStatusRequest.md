---
id: v2026-update-stream-status-request
title: UpdateStreamStatusRequest
pagination_label: UpdateStreamStatusRequest
sidebar_label: UpdateStreamStatusRequest
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'UpdateStreamStatusRequest', 'V2026UpdateStreamStatusRequest'] 
slug: /tools/sdk/powershell/v2026/models/update-stream-status-request
tags: ['SDK', 'Software Development Kit', 'UpdateStreamStatusRequest', 'V2026UpdateStreamStatusRequest']
---


# UpdateStreamStatusRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**StreamId** | **String** | ID of the stream whose status to update. | [required]
**Status** |  **Enum** [  "enabled",    "paused",    "disabled" ] | Desired stream status. | [required]
**Reason** | **String** | Optional reason for the status change. | [optional] 

## Examples

- Prepare the resource
```powershell
$UpdateStreamStatusRequest = Initialize-V2026UpdateStreamStatusRequest  -StreamId 550e8400-e29b-41d4-a716-446655440000 `
 -Status paused `
 -Reason manually paused
```

- Convert the resource to JSON
```powershell
$UpdateStreamStatusRequest | ConvertTo-JSON
```


[[Back to top]](#) 

