---
id: v2025-account-deleted-event
title: AccountDeletedEvent
pagination_label: AccountDeletedEvent
sidebar_label: AccountDeletedEvent
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'AccountDeletedEvent', 'V2025AccountDeletedEvent'] 
slug: /tools/sdk/powershell/v2025/models/account-deleted-event
tags: ['SDK', 'Software Development Kit', 'AccountDeletedEvent', 'V2025AccountDeletedEvent']
---


# AccountDeletedEvent

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** |  **Enum** [  "ACCOUNT_DELETED_V2" ] | The type of event. | [required]
**Cause** |  **Enum** [  "AGGREGATION",    "PROVISIONING" ] | The cause of the event. | [required]

## Examples

- Prepare the resource
```powershell
$AccountDeletedEvent = Initialize-V2025AccountDeletedEvent  -Type ACCOUNT_DELETED_V2 `
 -Cause AGGREGATION
```

- Convert the resource to JSON
```powershell
$AccountDeletedEvent | ConvertTo-JSON
```


[[Back to top]](#) 

