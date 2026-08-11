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
**WorkflowVersionId** | **String** | The workflow version a change belongs to. Can be used for both Workflow configurations and Workflow Session events. | [optional] 
**Version** | **String** | The workflow version SHA. | [optional] 
**StepId** | **String** | The id of the workflow action or condition the step event refers to. | [optional] 
**StepLabel** | **String** | The name associated to an action configuration. | [optional] 
**Source** |  **Enum** [  "ui",    "import",    "fork",    "cleanup_worker",    "delete_worker" ] | What triggered the versioning change. | [optional] 

## Examples

- Prepare the resource
```powershell
$AuditEventData = Initialize-NERMAuditEventData  -ProfileId 7d8c53ca-e99d-485c-9524-ea3849e82c79 `
 -WorkflowId 7d8c53ca-e99d-485c-9524-ea3849e82c79 `
 -WorkflowName My Workflow `
 -WorkflowUid my_workflow `
 -ProfileTypeId 7d8c53ca-e99d-485c-9524-ea3849e82c79 `
 -WorkflowVersionId e309339f-551f-48ab-b4f6-58d93123911f `
 -Version aadf95e45846365fa4b4c60f02c76ecffe718ee5 `
 -StepId 2f4b24c6-d420-4eee-b860-5ad24c743185 `
 -StepLabel RequestAction `
 -Source ui
```

- Convert the resource to JSON
```powershell
$AuditEventData | ConvertTo-JSON
```


[[Back to top]](#) 

