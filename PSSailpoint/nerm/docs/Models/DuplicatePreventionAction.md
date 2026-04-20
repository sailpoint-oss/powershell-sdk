---
id: nerm-duplicate-prevention-action
title: DuplicatePreventionAction
pagination_label: DuplicatePreventionAction
sidebar_label: DuplicatePreventionAction
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'DuplicatePreventionAction', 'NERMDuplicatePreventionAction'] 
slug: /tools/sdk/powershell/nerm/models/duplicate-prevention-action
tags: ['SDK', 'Software Development Kit', 'DuplicatePreventionAction', 'NERMDuplicatePreventionAction']
---


# DuplicatePreventionAction

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**WorkflowId** | **String** | The workflow the workflow action belongs to. | [required]
**Description** | **String** | The description of the workflow action. | [required]
**SearchScope** |  **Enum** [  "all",    "current" ] | The search scope of the profiles to check against. | [required]
**NeAttributeIds** | **[]String** | An array of ne_attribute_ids. | [optional] 
**HandleId** | **String** | The handle id. | [optional] 
**Archived** | **Boolean** | If the workflow action is archived or not. | [optional] [default to $false]

## Examples

- Prepare the resource
```powershell
$DuplicatePreventionAction = Initialize-NERMDuplicatePreventionAction  -WorkflowId 33f072dd-13b4-41e1-8ea0-16f2a59b57c8 `
 -Description Allows a user to select an already existing profile, or create a new one for the request. `
 -SearchScope current `
 -NeAttributeIds [33f072dd-13b4-41e1-8ea0-16f2a59b57c8] `
 -HandleId 33f072dd-13b4-41e1-8ea0-16f2a59b57c8 `
 -Archived false
```

- Convert the resource to JSON
```powershell
$DuplicatePreventionAction | ConvertTo-JSON
```


[[Back to top]](#) 

