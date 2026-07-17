---
id: workflow-execution-history
title: WorkflowExecutionHistory
pagination_label: WorkflowExecutionHistory
sidebar_label: WorkflowExecutionHistory
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'WorkflowExecutionHistory', 'WorkflowExecutionHistory'] 
slug: /tools/sdk/powershell/workflows/models/workflow-execution-history
tags: ['SDK', 'Software Development Kit', 'WorkflowExecutionHistory', 'WorkflowExecutionHistory']
---


# WorkflowExecutionHistory

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Definition** | **SystemCollectionsHashtable** |  | [optional] 
**History** | **SystemCollectionsHashtable** |  | [optional] 
**Trigger** | **SystemCollectionsHashtable** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$WorkflowExecutionHistory = Initialize-WorkflowExecutionHistory  -Definition null `
 -History null `
 -Trigger null
```

- Convert the resource to JSON
```powershell
$WorkflowExecutionHistory | ConvertTo-JSON
```


[[Back to top]](#) 

