---
id: create-reminder-escalation-tenant-config-v1401-response
title: CreateReminderEscalationTenantConfigV1401Response
pagination_label: CreateReminderEscalationTenantConfigV1401Response
sidebar_label: CreateReminderEscalationTenantConfigV1401Response
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'CreateReminderEscalationTenantConfigV1401Response', 'CreateReminderEscalationTenantConfigV1401Response'] 
slug: /tools/sdk/powershell/reminderescalations/models/create-reminder-escalation-tenant-config-v1401-response
tags: ['SDK', 'Software Development Kit', 'CreateReminderEscalationTenantConfigV1401Response', 'CreateReminderEscalationTenantConfigV1401Response']
---


# CreateReminderEscalationTenantConfigV1401Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarError** | **AnyType** | A message describing the error | [optional] 

## Examples

- Prepare the resource
```powershell
$CreateReminderEscalationTenantConfigV1401Response = Initialize-CreateReminderEscalationTenantConfigV1401Response  -VarError JWT validation failed: JWT is expired
```

- Convert the resource to JSON
```powershell
$CreateReminderEscalationTenantConfigV1401Response | ConvertTo-JSON
```


[[Back to top]](#) 

