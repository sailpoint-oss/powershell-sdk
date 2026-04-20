---
id: nerm-fulfillment-action
title: FulfillmentAction
pagination_label: FulfillmentAction
sidebar_label: FulfillmentAction
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'FulfillmentAction', 'NERMFulfillmentAction'] 
slug: /tools/sdk/powershell/nerm/models/fulfillment-action
tags: ['SDK', 'Software Development Kit', 'FulfillmentAction', 'NERMFulfillmentAction']
---


# FulfillmentAction

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
$FulfillmentAction = Initialize-NERMFulfillmentAction  -WorkflowId 33f072dd-13b4-41e1-8ea0-16f2a59b57c8 `
 -Description Have another user or group provide information for the profile. `
 -PageId 33f072dd-13b4-41e1-8ea0-16f2a59b57c8 `
 -Archived false `
 -RequiresComment false
```

- Convert the resource to JSON
```powershell
$FulfillmentAction | ConvertTo-JSON
```


[[Back to top]](#) 

