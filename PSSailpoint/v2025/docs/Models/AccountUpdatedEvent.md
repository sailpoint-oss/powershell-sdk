---
id: v2025-account-updated-event
title: AccountUpdatedEvent
pagination_label: AccountUpdatedEvent
sidebar_label: AccountUpdatedEvent
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'AccountUpdatedEvent', 'V2025AccountUpdatedEvent'] 
slug: /tools/sdk/powershell/v2025/models/account-updated-event
tags: ['SDK', 'Software Development Kit', 'AccountUpdatedEvent', 'V2025AccountUpdatedEvent']
---


# AccountUpdatedEvent

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** |  **Enum** [  "ACCOUNT_UPDATED_V2" ] | The type of event. | [required]
**Cause** |  **Enum** [  "AGGREGATION",    "PROVISIONING",    "PASSWORD_CHANGE" ] | The cause of the event. | [required]

## Examples

- Prepare the resource
```powershell
$AccountUpdatedEvent = Initialize-V2025AccountUpdatedEvent  -Type ACCOUNT_UPDATED_V2 `
 -Cause AGGREGATION
```

- Convert the resource to JSON
```powershell
$AccountUpdatedEvent | ConvertTo-JSON
```


[[Back to top]](#) 

