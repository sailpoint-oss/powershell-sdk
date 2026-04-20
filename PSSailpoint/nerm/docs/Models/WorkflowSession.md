---
id: nerm-workflow-session
title: WorkflowSession
pagination_label: WorkflowSession
sidebar_label: WorkflowSession
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'WorkflowSession', 'NERMWorkflowSession'] 
slug: /tools/sdk/powershell/nerm/models/workflow-session
tags: ['SDK', 'Software Development Kit', 'WorkflowSession', 'NERMWorkflowSession']
---


# WorkflowSession

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | The objects ID. | [optional] [readonly] 
**Uid** | **String** | The objects UID. | [optional] [readonly] 
**WorkflowId** | **String** | The workflow id. | [optional] 
**RequesterId** | **String** | The requester's id. | [optional] 
**RequesterType** |  **Enum** [  "User",    "NeprofileUser",    "NeaccessUser" ] | The requester type. | [optional] 
**ProfileId** | **String** | The profile this workflow session will be working with. Only Applicable for Update workflows | [optional] 
**ProfileIds** | **[]String** | The profiles this workflow session will be working with. Only Applicable for Batch workflows | [optional] 
**Status** |  **Enum** [  "api_request_sent",    "approved",    "assigned",    "attempting_to_start_workflow",    "AUTH-STATUS1",    "AUTH-STATUS2",    "AUTH-STATUS3",    "AUTH-STATUS4",    "AUTH-STATUS5",    "AUTH-STATUS6",    "AUTH-STATUS7",    "AUTH-STATUS8",    "AUTH-STATUS9",    "auto_assigned",    "batch_completed",    "checking_for_duplicates",    "closed",    "completed",    "courion_add",    "courion_extend",    "courion_terminate",    "courion_update",    "duplicates_resolved",    "failed",    "fulfilled",    "invitation_sent",    "ldap_provided",    "new",    "non_employee_created",    "non_employee_updated",    "notified",    "pending_approval",    "pending_assignment",    "pending_courion_add",    "pending_courion_extend",    "pending_courion_terminate",    "pending_courion_update",    "pending_creation",    "pending_fulfillment",    "pending_ldap",    "pending_notification",    "pending_profile_select",    "pending_request",    "pending_review",    "pending_status_change",    "pending_stored_procedure",    "pending_trigger",    "pending_update",    "processing",    "profile_check_complete",    "profiles_selected",    "rejected",    "requested",    "reviewed",    "soap_request_sent",    "started_workflow",    "status_changed",    "stored_procedure",    "un_assigned",    "waiting_on_workflow",    "workflow_changed" ] | The status of the workflow session. | [optional] 
**Attributes** | **map[string]String** | The attributes asscoiated with the workflow session. | [optional] 

## Examples

- Prepare the resource
```powershell
$WorkflowSession = Initialize-NERMWorkflowSession  -Id 33f072dd-13b4-41e1-8ea0-16f2a59b57c8 `
 -Uid wsUid `
 -WorkflowId 33f072dd-13b4-41e1-8ea0-16f2a59b57c8 `
 -RequesterId 33f072dd-13b4-41e1-8ea0-16f2a59b57c8 `
 -RequesterType User `
 -ProfileId 33f072dd-13b4-41e1-8ea0-16f2a59b57c8 `
 -ProfileIds 59ed1cb6-9977-4965-9bfe-f2bcc242523e, 89ed1cb6-9977-4965-9bfe-f2bcc242523e `
 -Status completed `
 -Attributes {text_attribute_uid=static text, date_attribute_uid=01/15/2020, profile_select_attribute_uid=Profile Name, profile_search_attribute_uid=Profile Name, multiple_profile_search_attribute_uid=Profile Name,Second Profile Name,Third Profile Name, multiple_profile_select_attribute_uid=Profile Name,Second Profile Name,Third Profile Name, contributor_select_attribute_uid=User Name (user_email@test.com), contributor_search_attribute_uid=User Name (user_email@test.com), multiple_contributor_search_attribute_uid=User Name (user_email@test.com),Second User Name (user_email@test.com),Third User Name (user_email@test.com), owner_select_attribute_uid=User Name (user_email@test.com), owner_search_attribute_uid=User Name (user_email@test.com), dropdown_attribute_uid=yes, no, tags_attribute_uid=yes, no, checkbox_attribute_uid=yes, no, text_area_uid=static text, radio_attribute_uid=yes, no}
```

- Convert the resource to JSON
```powershell
$WorkflowSession | ConvertTo-JSON
```


[[Back to top]](#) 

