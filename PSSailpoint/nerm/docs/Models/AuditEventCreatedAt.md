---
id: nerm-audit-event-created-at
title: AuditEventCreatedAt
pagination_label: AuditEventCreatedAt
sidebar_label: AuditEventCreatedAt
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'AuditEventCreatedAt', 'NERMAuditEventCreatedAt'] 
slug: /tools/sdk/powershell/nerm/models/audit-event-created-at
tags: ['SDK', 'Software Development Kit', 'AuditEventCreatedAt', 'NERMAuditEventCreatedAt']
---


# AuditEventCreatedAt

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Gt** | **System.DateTime** | Greater Than - search for events with a date greater than the value | [optional] 
**Lt** | **System.DateTime** | Less Than - search for events with a date less than the value | [optional] 
**Eq** | **System.DateTime** | Equal - search for events with a date equal to the value | [optional] 

## Examples

- Prepare the resource
```powershell
$AuditEventCreatedAt = Initialize-NERMAuditEventCreatedAt  -Gt null `
 -Lt null `
 -Eq null
```

- Convert the resource to JSON
```powershell
$AuditEventCreatedAt | ConvertTo-JSON
```


[[Back to top]](#) 

