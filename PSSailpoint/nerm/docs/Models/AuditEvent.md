---
id: nerm-audit-event
title: AuditEvent
pagination_label: AuditEvent
sidebar_label: AuditEvent
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'AuditEvent', 'NERMAuditEvent'] 
slug: /tools/sdk/powershell/nerm/models/audit-event
tags: ['SDK', 'Software Development Kit', 'AuditEvent', 'NERMAuditEvent']
---


# AuditEvent

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CreatedAt** | [**AuditEventCreatedAt**](audit-event-created-at) |  | [optional] 
**SubjectType** |  **Enum** [  "ApprovalAction",    "AutomatedUser",    "AutomatedWorkflow",    "BatchWorkflow",    "CreateWorkflow",    "DelegateUser",    "Delegation",    "Delete",    "Email",    "ExpirationWorkflow",    "Form",    "FormAttribute",    "FormAttributeForm",    "Get",    "IdentityProofingResult",    "IdproxyPermission",    "IdproxyRole",    "InvitationWorkflow",    "LoginWorkflow",    "NeaccessRole",    "NeaccessUser",    "NeAttribute",    "NeAttributeOption",    "NeprofileRole",    "NeprofileUser",    "Notification",    "Page",    "PasswordResetWorkflow",    "Patch",    "Permission",    "Portal",    "PortalRegistrationWorkflow",    "Post",    "Profile",    "ProfilePage",    "ProfileType",    "ProfileTypeRole",    "RegistrationWorkflow",    "Role",    "RoleProfile",    "SamlConfiguration",    "SchemaMapping",    "SchemaMappingField",    "SecurityQuestion",    "UpdateWorkflow",    "User",    "UserManager",    "UserProfile",    "UserRole",    "Validation",    "VerificationEmail",    "Workflow",    "WorkflowAction",    "WorkflowPage",    "WorkflowSession" ] | Categorization of audit event. | [optional] 
**Type** |  **Enum** [  "AuditableProfileCreate",    "AuditableProfileUpdate",    "AuditableProfileDestroy",    "AuditableBulkProfileUpdate",    "AuditableProfileContributorAdd",    "AuditableProfileContributorRemove",    "AuditableProfileContributorRoleAdd",    "AuditableProfileContributorRoleRemove",    "AuditableProfileOwnerUpdate",    "AuditableProfileWorkflowEvent",    "AuditableWorkflowActionSkippedEvent",    "AuditableWorkflowApprovedEvent",    "AuditableWorkflowApprovedEvent",    "AuditableWorkflowAssignedEvent",    "AuditableWorkflowAutoAssignedEvent",    "AuditableWorkflowBatchCompleteEvent",    "AuditableWorkflowClosedEvent",    "AuditableWorkflowDuplicateCheckStartEvent",    "AuditableWorkflowDuplicateResolutionEvent",    "AuditableWorkflowFailedEvent",    "AuditableWorkflowIdentityProofedEvent",    "AuditableWorkflowInvitationSentEvent",    "AuditableWorkflowLdapProvidedEvent",    "AuditableWorkflowNotificationSentEvent",    "AuditableWorkflowPendingApprovalEvent",    "AuditableWorkflowPendingAssignmentEvent",    "AuditableWorkflowPendingFulfillmentEvent",    "AuditableWorkflowFulfilledEvent",    "AuditableWorkflowPendingIdentityProofEvent",    "AuditableWorkflowPendingLdapEvent",    "AuditableWorkflowPendingRequestEvent",    "AuditableWorkflowPendingReviewEvent",    "AuditableWorkflowProfileCreatedEvent",    "AuditableWorkflowProfileSelectEvent",    "AuditableWorkflowProfileUpdatedEvent",    "AuditableWorkflowRejectedEvent",    "AuditableWorkflowRequestMadeEvent",    "AuditableWorkflowRestApiEvent",    "AuditableWorkflowReviewedEvent",    "AuditableWorkflowRunningWorkflowEvent",    "AuditableWorkflowSoapApiEvent",    "AuditableWorkflowStatusChangedEvent",    "AuditableWorkflowStoredProcedureEvent",    "AuditableWorkflowUnassignEvent",    "AuditableWorkflowWaitingForWorkflowEvent",    "AuditableWorkflowWorkflowChangedEvent",    "AuditableWorkflowVersionCreatedEvent",    "AuditableWorkflowVersionForkedEvent",    "AuditableWorkflowVersionDeprecatedEvent",    "AuditableWorkflowVersionDeletedEvent",    "AuditableWorkflowStepCreatedEvent",    "AuditableWorkflowStepUpdatedEvent",    "ActiveRecordCreate",    "ActiveRecordUpdate",    "ActiveRecordDestroy",    "AuditableApiEvent" ] | The type of audit event | [optional] 
**SubjectId** | **String** | Identifier of the subject | [optional] 
**VarData** | [**AuditEventData**](audit-event-data) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$AuditEvent = Initialize-NERMAuditEvent  -CreatedAt null `
 -SubjectType Profile `
 -Type AuditableProfileCreate `
 -SubjectId 7d8c53ca-e99d-485c-9524-ea3849e82c79 `
 -VarData null
```

- Convert the resource to JSON
```powershell
$AuditEvent | ConvertTo-JSON
```


[[Back to top]](#) 

