---
id: nerm-set-attributes-action
title: SetAttributesAction
pagination_label: SetAttributesAction
sidebar_label: SetAttributesAction
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'SetAttributesAction', 'NERMSetAttributesAction'] 
slug: /tools/sdk/powershell/nerm/models/set-attributes-action
tags: ['SDK', 'Software Development Kit', 'SetAttributesAction', 'NERMSetAttributesAction']
---


# SetAttributesAction

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**WorkflowId** | **String** | The workflow the workflow action belongs to. | [required]
**Description** | **String** | The description of the workflow action. | [required]
**Archived** | **Boolean** | If the workflow action is archived or not. | [optional] [default to $false]

## Examples

- Prepare the resource
```powershell
$SetAttributesAction = Initialize-NERMSetAttributesAction  -WorkflowId 33f072dd-13b4-41e1-8ea0-16f2a59b57c8 `
 -Description Set attribute(s) to a specific value. `
 -Archived false
```

- Convert the resource to JSON
```powershell
$SetAttributesAction | ConvertTo-JSON
```


[[Back to top]](#) 

