---
id: nerm-batch-update-action
title: BatchUpdateAction
pagination_label: BatchUpdateAction
sidebar_label: BatchUpdateAction
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'BatchUpdateAction', 'NERMBatchUpdateAction'] 
slug: /tools/sdk/powershell/nerm/models/batch-update-action
tags: ['SDK', 'Software Development Kit', 'BatchUpdateAction', 'NERMBatchUpdateAction']
---


# BatchUpdateAction

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**WorkflowId** | **String** | The workflow the workflow action belongs to. | [required]
**Description** | **String** | The description of the workflow action. | [required]
**Archived** | **Boolean** | If the workflow action is archived or not. | [optional] [default to $false]

## Examples

- Prepare the resource
```powershell
$BatchUpdateAction = Initialize-NERMBatchUpdateAction  -WorkflowId 33f072dd-13b4-41e1-8ea0-16f2a59b57c8 `
 -Description Updates a batch of profiles with all attributes collected during the workflow. `
 -Archived false
```

- Convert the resource to JSON
```powershell
$BatchUpdateAction | ConvertTo-JSON
```


[[Back to top]](#) 

