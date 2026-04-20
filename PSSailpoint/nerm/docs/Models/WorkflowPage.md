---
id: nerm-workflow-page
title: WorkflowPage
pagination_label: WorkflowPage
sidebar_label: WorkflowPage
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'WorkflowPage', 'NERMWorkflowPage'] 
slug: /tools/sdk/powershell/nerm/models/workflow-page
tags: ['SDK', 'Software Development Kit', 'WorkflowPage', 'NERMWorkflowPage']
---


# WorkflowPage

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Uid** | **String** | The user-specified identifier of the page | [optional] 
**Description** | **String** | The description of the page | [optional] 
**Name** | **String** | The name of the page | [optional] 
**Archived** | **Boolean** | Determines whether the page is archived | [optional] 
**Id** | **String** | The id of the form | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$WorkflowPage = Initialize-NERMWorkflowPage  -Uid page_uid `
 -Description Page for workflow `
 -Name My Page Name `
 -Archived false `
 -Id 2e06b876-f456-473d-bd65-b6435e0b6b2d
```

- Convert the resource to JSON
```powershell
$WorkflowPage | ConvertTo-JSON
```


[[Back to top]](#) 

