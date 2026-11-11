---
id: create-reminder-escalation-tenant-config-v1429-response
title: CreateReminderEscalationTenantConfigV1429Response
pagination_label: CreateReminderEscalationTenantConfigV1429Response
sidebar_label: CreateReminderEscalationTenantConfigV1429Response
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'CreateReminderEscalationTenantConfigV1429Response', 'CreateReminderEscalationTenantConfigV1429Response'] 
slug: /tools/sdk/powershell/reminderescalations/models/create-reminder-escalation-tenant-config-v1429-response
tags: ['SDK', 'Software Development Kit', 'CreateReminderEscalationTenantConfigV1429Response', 'CreateReminderEscalationTenantConfigV1429Response']
---


# CreateReminderEscalationTenantConfigV1429Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Message** | **AnyType** | A message describing the error | [optional] 

## Examples

- Prepare the resource
```powershell
$CreateReminderEscalationTenantConfigV1429Response = Initialize-CreateReminderEscalationTenantConfigV1429Response  -Message  Rate Limit Exceeded 
```

- Convert the resource to JSON
```powershell
$CreateReminderEscalationTenantConfigV1429Response | ConvertTo-JSON
```


[[Back to top]](#) 

