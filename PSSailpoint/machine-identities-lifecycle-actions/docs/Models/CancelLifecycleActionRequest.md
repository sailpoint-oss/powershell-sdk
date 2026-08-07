---
id: cancel-lifecycle-action-request
title: CancelLifecycleActionRequest
pagination_label: CancelLifecycleActionRequest
sidebar_label: CancelLifecycleActionRequest
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'CancelLifecycleActionRequest', 'CancelLifecycleActionRequest'] 
slug: /tools/sdk/powershell/machineidentitieslifecycleactions/models/cancel-lifecycle-action-request
tags: ['SDK', 'Software Development Kit', 'CancelLifecycleActionRequest', 'CancelLifecycleActionRequest']
---


# CancelLifecycleActionRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Comment** | **String** | Optional cancel comment appended to the lifecycle request comment thread. | [optional] 

## Examples

- Prepare the resource
```powershell
$CancelLifecycleActionRequest = Initialize-CancelLifecycleActionRequest  -Comment Cancelling - will resubmit after maintenance window
```

- Convert the resource to JSON
```powershell
$CancelLifecycleActionRequest | ConvertTo-JSON
```


[[Back to top]](#) 

