---
id: nerm-update-workflow
title: UpdateWorkflow
pagination_label: UpdateWorkflow
sidebar_label: UpdateWorkflow
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'UpdateWorkflow', 'NERMUpdateWorkflow'] 
slug: /tools/sdk/powershell/nerm/models/update-workflow
tags: ['SDK', 'Software Development Kit', 'UpdateWorkflow', 'NERMUpdateWorkflow']
---


# UpdateWorkflow

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ProfileTypeId** | **String** | The profile type the workflow effects. | [required]
**Status** |  **Enum** [  "Enabled",    "Disabled" ] | Whether or not the workflow is enabled or disabled. | [required]
**Uid** | **String** | The user-specified identifier of the workflow. | [required]
**Name** | **String** | Name of the workflow | [required]
**ProfileStatus** | **String** | The status of the profiles the workflow will effect. | [required]
**DisableFailureEmailNotifications** | **Boolean** | When honored at runtime, suppresses failure email notifications for this workflow's sessions. | [optional] 

## Examples

- Prepare the resource
```powershell
$UpdateWorkflow = Initialize-NERMUpdateWorkflow  -ProfileTypeId 33f072dd-13b4-41e1-8ea0-16f2a59b57c8 `
 -Status Enabled `
 -Uid my_uid `
 -Name my_workflow `
 -ProfileStatus active `
 -DisableFailureEmailNotifications false
```

- Convert the resource to JSON
```powershell
$UpdateWorkflow | ConvertTo-JSON
```


[[Back to top]](#) 

