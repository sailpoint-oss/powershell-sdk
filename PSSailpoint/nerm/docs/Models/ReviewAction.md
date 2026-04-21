---
id: nerm-review-action
title: ReviewAction
pagination_label: ReviewAction
sidebar_label: ReviewAction
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'ReviewAction', 'NERMReviewAction'] 
slug: /tools/sdk/powershell/nerm/models/review-action
tags: ['SDK', 'Software Development Kit', 'ReviewAction', 'NERMReviewAction']
---


# ReviewAction

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**WorkflowId** | **String** | The workflow the workflow action belongs to. | [required]
**Description** | **String** | The description of the workflow action. | [required]
**PageId** | **String** | The page the workflow action should render. | [optional] 
**Archived** | **Boolean** | If the workflow action is archived or not. | [optional] [default to $false]
**RequiresComment** | **Boolean** | If the workflow action requires a comment or not. | [optional] [default to $false]

## Examples

- Prepare the resource
```powershell
$ReviewAction = Initialize-NERMReviewAction  -WorkflowId 33f072dd-13b4-41e1-8ea0-16f2a59b57c8 `
 -Description Allows the requester to review. `
 -PageId 33f072dd-13b4-41e1-8ea0-16f2a59b57c8 `
 -Archived false `
 -RequiresComment false
```

- Convert the resource to JSON
```powershell
$ReviewAction | ConvertTo-JSON
```


[[Back to top]](#) 

