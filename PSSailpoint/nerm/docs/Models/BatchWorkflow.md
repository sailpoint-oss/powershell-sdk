---
id: nerm-batch-workflow
title: BatchWorkflow
pagination_label: BatchWorkflow
sidebar_label: BatchWorkflow
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'BatchWorkflow', 'NERMBatchWorkflow'] 
slug: /tools/sdk/powershell/nerm/models/batch-workflow
tags: ['SDK', 'Software Development Kit', 'BatchWorkflow', 'NERMBatchWorkflow']
---


# BatchWorkflow

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ProfileTypeId** | **String** | The profile type the workflow effects. | [required]
**Status** |  **Enum** [  "Enabled",    "Disabled" ] | Whether or not the workflow is enabled or disabled. | [required]
**Uid** | **String** | The user-specified identifier of the workflow. | [required]
**Name** | **String** | Name of the workflow | [required]
**Options** | [**BatchWorkflowOptions**](batch-workflow-options) |  | [optional] 
**DisableFailureEmailNotifications** | **Boolean** | When honored at runtime, suppresses failure email notifications for this workflow's sessions. | [optional] 

## Examples

- Prepare the resource
```powershell
$BatchWorkflow = Initialize-NERMBatchWorkflow  -ProfileTypeId 33f072dd-13b4-41e1-8ea0-16f2a59b57c8 `
 -Status Enabled `
 -Uid my_uid `
 -Name my_workflow `
 -Options null `
 -DisableFailureEmailNotifications false
```

- Convert the resource to JSON
```powershell
$BatchWorkflow | ConvertTo-JSON
```


[[Back to top]](#) 

