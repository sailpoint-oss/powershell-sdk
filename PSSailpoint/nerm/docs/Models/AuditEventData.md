---
id: nerm-audit-event-data
title: AuditEventData
pagination_label: AuditEventData
sidebar_label: AuditEventData
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'AuditEventData', 'NERMAuditEventData'] 
slug: /tools/sdk/powershell/nerm/models/audit-event-data
tags: ['SDK', 'Software Development Kit', 'AuditEventData', 'NERMAuditEventData']
---


# AuditEventData

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ProfileId** | **String** | The profile id associated with the event | [optional] 
**WorkflowId** | **String** | The workflow id associated with the event | [optional] 
**WorkflowName** | **String** | The workflow name associated with the event | [optional] 
**WorkflowUid** | **String** | The workflow uid associated with the event | [optional] 
**ProfileTypeId** | **String** | The profile type associated with the event | [optional] 

## Examples

- Prepare the resource
```powershell
$AuditEventData = Initialize-NERMAuditEventData  -ProfileId 7d8c53ca-e99d-485c-9524-ea3849e82c79 `
 -WorkflowId 7d8c53ca-e99d-485c-9524-ea3849e82c79 `
 -WorkflowName My Workflow `
 -WorkflowUid my_workflow `
 -ProfileTypeId 7d8c53ca-e99d-485c-9524-ea3849e82c79
```

- Convert the resource to JSON
```powershell
$AuditEventData | ConvertTo-JSON
```


[[Back to top]](#) 

