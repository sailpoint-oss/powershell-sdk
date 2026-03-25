---
id: v2026-account-created-event
title: AccountCreatedEvent
pagination_label: AccountCreatedEvent
sidebar_label: AccountCreatedEvent
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'AccountCreatedEvent', 'V2026AccountCreatedEvent'] 
slug: /tools/sdk/powershell/v2026/models/account-created-event
tags: ['SDK', 'Software Development Kit', 'AccountCreatedEvent', 'V2026AccountCreatedEvent']
---


# AccountCreatedEvent

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** |  **Enum** [  "ACCOUNT_CREATED_V2" ] | The type of event. | [required]
**Cause** |  **Enum** [  "AGGREGATION",    "PROVISIONING" ] | The cause of the event. | [required]

## Examples

- Prepare the resource
```powershell
$AccountCreatedEvent = Initialize-V2026AccountCreatedEvent  -Type ACCOUNT_CREATED_V2 `
 -Cause AGGREGATION
```

- Convert the resource to JSON
```powershell
$AccountCreatedEvent | ConvertTo-JSON
```


[[Back to top]](#) 

