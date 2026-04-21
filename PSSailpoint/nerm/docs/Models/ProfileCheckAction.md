---
id: nerm-profile-check-action
title: ProfileCheckAction
pagination_label: ProfileCheckAction
sidebar_label: ProfileCheckAction
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'ProfileCheckAction', 'NERMProfileCheckAction'] 
slug: /tools/sdk/powershell/nerm/models/profile-check-action
tags: ['SDK', 'Software Development Kit', 'ProfileCheckAction', 'NERMProfileCheckAction']
---


# ProfileCheckAction

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**WorkflowId** | **String** | The workflow the workflow action belongs to. | [required]
**Description** | **String** | The description of the workflow action. | [required]
**Archived** | **Boolean** | If the workflow action is archived or not. | [optional] [default to $false]
**NeAttributeIds** | **[]String** | An array of ne_attribute_ids. | [optional] 
**HandleType** |  **Enum** [  "session",    "attribute" ] | The handle type for what should happen if an existing profile is found. | [optional] 
**HandleId** | **String** | The handle id.  When handle type is session, this is the session id. | [optional] 

## Examples

- Prepare the resource
```powershell
$ProfileCheckAction = Initialize-NERMProfileCheckAction  -WorkflowId 33f072dd-13b4-41e1-8ea0-16f2a59b57c8 `
 -Description Finds a profile based on selected attributes and values found in the session. `
 -Archived false `
 -NeAttributeIds [33f072dd-13b4-41e1-8ea0-16f2a59b57c8] `
 -HandleType session `
 -HandleId 33f072dd-13b4-41e1-8ea0-16f2a59b57c8
```

- Convert the resource to JSON
```powershell
$ProfileCheckAction | ConvertTo-JSON
```


[[Back to top]](#) 

