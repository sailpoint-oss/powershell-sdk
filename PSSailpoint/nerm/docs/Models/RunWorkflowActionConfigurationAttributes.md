---
id: nerm-run-workflow-action-configuration-attributes
title: RunWorkflowActionConfigurationAttributes
pagination_label: RunWorkflowActionConfigurationAttributes
sidebar_label: RunWorkflowActionConfigurationAttributes
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'RunWorkflowActionConfigurationAttributes', 'NERMRunWorkflowActionConfigurationAttributes'] 
slug: /tools/sdk/powershell/nerm/models/run-workflow-action-configuration-attributes
tags: ['SDK', 'Software Development Kit', 'RunWorkflowActionConfigurationAttributes', 'NERMRunWorkflowActionConfigurationAttributes']
---


# RunWorkflowActionConfigurationAttributes

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | the id. | [optional] 
**WorkflowId** | **String** | the id of the workflow. | [optional] 
**WaitForCompletion** | **Boolean** | If the parent workflow should wait for the child to complete. | [optional] 
**ProfileToSend** |  **Enum** [  "none",    "current",    "attribute",    "profile_type" ] | the profile the parent should send to the child workflow. | [optional] 
**ReturnProfile** | **Boolean** | if the child workflow should return a profile. | [optional] 
**RunWorkflowActionId** | **String** | the id of the child workflow to run. | [optional] 
**ProfileTypeId** | **String** | the id of the profile type. | [optional] 

## Examples

- Prepare the resource
```powershell
$RunWorkflowActionConfigurationAttributes = Initialize-NERMRunWorkflowActionConfigurationAttributes  -Id 33f072dd-13b4-41e1-8ea0-16f2a59b57c8 `
 -WorkflowId 33f072dd-13b4-41e1-8ea0-16f2a59b57c8 `
 -WaitForCompletion false `
 -ProfileToSend current `
 -ReturnProfile false `
 -RunWorkflowActionId 33f072dd-13b4-41e1-8ea0-16f2a59b57c8 `
 -ProfileTypeId 33f072dd-13b4-41e1-8ea0-16f2a59b57c8
```

- Convert the resource to JSON
```powershell
$RunWorkflowActionConfigurationAttributes | ConvertTo-JSON
```


[[Back to top]](#) 

