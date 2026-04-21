---
id: nerm-workflow-session1
title: WorkflowSession1
pagination_label: WorkflowSession1
sidebar_label: WorkflowSession1
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'WorkflowSession1', 'NERMWorkflowSession1'] 
slug: /tools/sdk/powershell/nerm/models/workflow-session1
tags: ['SDK', 'Software Development Kit', 'WorkflowSession1', 'NERMWorkflowSession1']
---


# WorkflowSession1

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**WorkflowId** | **String** | The workflow id. | [required]
**RequesterId** | **String** | The requester's id. | [required]
**RequesterType** |  **Enum** [  "User",    "NeprofileUser",    "NeaccessUser" ] | The requester type. | [required]
**ProfileId** | **String** | The profile this workflow session will be working with. Only Applicable for Update workflows | [optional] 
**ProfileIds** | **[]String** | The profiles this workflow session will be working with. Only Applicable for Batch workflows | [optional] 
**Attributes** | **map[string]String** | The attributes associated with the workflow session. | [optional] 

## Examples

- Prepare the resource
```powershell
$WorkflowSession1 = Initialize-NERMWorkflowSession1  -WorkflowId 33f072dd-13b4-41e1-8ea0-16f2a59b57c8 `
 -RequesterId 33f072dd-13b4-41e1-8ea0-16f2a59b57c8 `
 -RequesterType User `
 -ProfileId 33f072dd-13b4-41e1-8ea0-16f2a59b57c8 `
 -ProfileIds [59ed1cb6-9977-4965-9bfe-f2bcc242523e, 89ed1cb6-9977-4965-9bfe-f2bcc242523e] `
 -Attributes {text_attribute_uid=static text, date_attribute_uid=01/15/2020, profile_select_attribute_uid=79ed1cb6-9977-4965-9bfe-f2bcc242523e, multiple_profile_select_attribute_uid=59ed1cb6-9977-4965-9bfe-f2bcc242523e, 89ed1cb6-9977-4965-9bfe-f2bcc242523e, profile_search_attribute_uid=79ed1cb6-9977-4965-9bfe-f2bcc242523e, multiple_profile_search_attribute_uid=59ed1cb6-9977-4965-9bfe-f2bcc242523e, 89ed1cb6-9977-4965-9bfe-f2bcc242523e, contributor_select_attribute_uid=49ed1cb6-9977-4965-9bfe-f2bcc2425244, contributor_search_attribute_uid=49ed1cb6-9977-4965-9bfe-f2bcc2425244, multiple_contributor_search_attribute_uid=59ed1cb6-9977-4965-9bfe-f2bcc242523e, 89ed1cb6-9977-4965-9bfe-f2bcc242523e, owner_select_attribute_uid=79ed1cb6-9977-4965-9bfe-f2bcc242523e, owner_search_attribute_uid=79ed1cb6-9977-4965-9bfe-f2bcc242523e, dropdown_attribute_uid=yes, no, tags_attribute_uid=yes, no, checkbox_attribute_uid=yes, no, text_area_uid=static text, radio_attribute_uid=yes, no}
```

- Convert the resource to JSON
```powershell
$WorkflowSession1 | ConvertTo-JSON
```


[[Back to top]](#) 

