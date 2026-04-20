---
id: nerm-contributors-action
title: ContributorsAction
pagination_label: ContributorsAction
sidebar_label: ContributorsAction
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'ContributorsAction', 'NERMContributorsAction'] 
slug: /tools/sdk/powershell/nerm/models/contributors-action
tags: ['SDK', 'Software Development Kit', 'ContributorsAction', 'NERMContributorsAction']
---


# ContributorsAction

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**WorkflowId** | **String** | The workflow the workflow action belongs to. | [required]
**Description** | **String** | The description of the workflow action. | [required]
**Owner** |  **Enum** [  "true",    "false" ] | If the assignment option should be an owner.  Owner, Contributors, or Roles must be chosen. | [optional] 
**Contributors** |  **Enum** [  "true",    "false" ] | If the assignment option should be contributors. Owner, Contributors, or Roles must be chosen. | [optional] 
**Roles** |  **Enum** [  "true",    "false" ] | If the assignment option should be roles. Owner, Contributors, or Roles must be chosen. | [optional] 
**Archived** | **Boolean** | If the workflow action is archived or not. | [optional] [default to $false]

## Examples

- Prepare the resource
```powershell
$ContributorsAction = Initialize-NERMContributorsAction  -WorkflowId 33f072dd-13b4-41e1-8ea0-16f2a59b57c8 `
 -Description Have the requester determine the contributors or owner of the profile. `
 -Owner true `
 -Contributors true `
 -Roles true `
 -Archived false
```

- Convert the resource to JSON
```powershell
$ContributorsAction | ConvertTo-JSON
```


[[Back to top]](#) 

