---
id: nerm-login-workflow
title: LoginWorkflow
pagination_label: LoginWorkflow
sidebar_label: LoginWorkflow
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'LoginWorkflow', 'NERMLoginWorkflow'] 
slug: /tools/sdk/powershell/nerm/models/login-workflow
tags: ['SDK', 'Software Development Kit', 'LoginWorkflow', 'NERMLoginWorkflow']
---


# LoginWorkflow

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ProfileTypeId** | **String** | The profile type the workflow effects. | [required]
**Status** |  **Enum** [  "Enabled",    "Disabled" ] | Whether or not the workflow is enabled or disabled. | [required]
**Uid** | **String** | The user-specified identifier of the workflow. | [required]
**Name** | **String** | Name of the workflow | [required]
**Options** | [**LoginWorkflowOptions**](login-workflow-options) |  | [optional] 
**DisableFailureEmailNotifications** | **Boolean** | When honored at runtime, suppresses failure email notifications for this workflow's sessions. | [optional] 

## Examples

- Prepare the resource
```powershell
$LoginWorkflow = Initialize-NERMLoginWorkflow  -ProfileTypeId 33f072dd-13b4-41e1-8ea0-16f2a59b57c8 `
 -Status Enabled `
 -Uid my_uid `
 -Name my_workflow `
 -Options null `
 -DisableFailureEmailNotifications false
```

- Convert the resource to JSON
```powershell
$LoginWorkflow | ConvertTo-JSON
```


[[Back to top]](#) 

