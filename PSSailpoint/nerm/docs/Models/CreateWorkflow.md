---
id: nerm-create-workflow
title: CreateWorkflow
pagination_label: CreateWorkflow
sidebar_label: CreateWorkflow
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'CreateWorkflow', 'NERMCreateWorkflow'] 
slug: /tools/sdk/powershell/nerm/models/create-workflow
tags: ['SDK', 'Software Development Kit', 'CreateWorkflow', 'NERMCreateWorkflow']
---


# CreateWorkflow

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ProfileTypeId** | **String** | The profile type the workflow effects. | [required]
**Status** |  **Enum** [  "Enabled",    "Disabled" ] | Whether or not the workflow is enabled or disabled. | [required]
**Uid** | **String** | The user-specified identifier of the workflow. | [required]
**Name** | **String** | Name of the workflow | [required]
**DisableFailureEmailNotifications** | **Boolean** | When honored at runtime, suppresses failure email notifications for this workflow's sessions. | [optional] 

## Examples

- Prepare the resource
```powershell
$CreateWorkflow = Initialize-NERMCreateWorkflow  -ProfileTypeId 33f072dd-13b4-41e1-8ea0-16f2a59b57c8 `
 -Status Enabled `
 -Uid my_uid `
 -Name my_workflow `
 -DisableFailureEmailNotifications false
```

- Convert the resource to JSON
```powershell
$CreateWorkflow | ConvertTo-JSON
```


[[Back to top]](#) 

