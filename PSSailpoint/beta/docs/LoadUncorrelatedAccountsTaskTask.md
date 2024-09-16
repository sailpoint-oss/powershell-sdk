# LoadUncorrelatedAccountsTaskTask
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | System-generated unique ID of the task this taskStatus represents | [optional] 
**Type** | **String** | Type of task this task represents | [optional] 
**Name** | **String** | The name of uncorrelated accounts process | [optional] 
**Description** | **String** | The description of the task | [optional] 
**Launcher** | **String** | The user who initiated the task | [optional] 
**Created** | **System.DateTime** | The Task creation date | [optional] 
**Launched** | **System.DateTime** | The task start date | [optional] 
**Completed** | **System.DateTime** | The task completion date | [optional] 
**CompletionStatus** | **String** | Task completion status. | [optional] 
**ParentName** | **String** | Name of the parent task if exists. | [optional] 
**Messages** | [**LoadUncorrelatedAccountsTaskTaskMessagesInner[]**](LoadUncorrelatedAccountsTaskTaskMessagesInner.md) | List of the messages dedicated to the report.  From task definition perspective here usually should be warnings or errors. | [optional] 
**Progress** | **String** | Current task state. | [optional] 
**Attributes** | [**LoadUncorrelatedAccountsTaskTaskAttributes**](LoadUncorrelatedAccountsTaskTaskAttributes.md) |  | [optional] 
**Returns** | [**SystemCollectionsHashtable**](.md) | Return values from the task | [optional] 

## Examples

- Prepare the resource
```powershell
$LoadUncorrelatedAccountsTaskTask = Initialize-PSSailpoint.BetaLoadUncorrelatedAccountsTaskTask  -Id 90b83a6bb737489494794f84cd3a51e6 `
 -Type QUARTZ `
 -Name Cloud Process Uncorrelated Accounts `
 -Description Processes uncorrelated accounts for the specified application. `
 -Launcher John Doe `
 -Created null `
 -Launched null `
 -Completed null `
 -CompletionStatus Success `
 -ParentName Audit Report `
 -Messages [] `
 -Progress Initializing... `
 -Attributes null `
 -Returns [{displayLabel&#x3D;TASK_OUT_ACCOUNT_CORRELATION_APPLICATIONS, attributeName&#x3D;applications}, {displayLabel&#x3D;TASK_OUT_ACCOUNT_CORRELATION_TOTAL, attributeName&#x3D;total}, {displayLabel&#x3D;TASK_OUT_ACCOUNT_CORRELATION_IGNORED, attributeName&#x3D;correlationFailures}, {displayLabel&#x3D;TASK_OUT_ACCOUNT_CORRELATION_FAILURES, attributeName&#x3D;ignored}, {displayLabel&#x3D;TASK_OUT_UNCHANGED_ACCOUNTS, attributeName&#x3D;optimized}, {displayLabel&#x3D;TASK_OUT_ACCOUNT_CORRELATION__CREATED, attributeName&#x3D;created}, {displayLabel&#x3D;TASK_OUT_ACCOUNT_CORRELATION_UPDATED, attributeName&#x3D;updated}, {displayLabel&#x3D;TASK_OUT_ACCOUNT_CORRELATION_DELETED, attributeName&#x3D;deleted}, {displayLabel&#x3D;TASK_OUT_ACCOUNT_CORRELATION_MANAGER_CHANGES, attributeName&#x3D;managerChanges}, {displayLabel&#x3D;TASK_OUT_ACCOUNT_CORRELATION_BUSINESS_ROLE_CHANGES, attributeName&#x3D;detectedRoleChanges}, {displayLabel&#x3D;TASK_OUT_ACCOUNT_CORRELATION_EXCEPTION_CHANGES, attributeName&#x3D;exceptionChanges}, {displayLabel&#x3D;TASK_OUT_ACCOUNT_CORRELATION_POLICIES, attributeName&#x3D;policies}, {displayLabel&#x3D;TASK_OUT_ACCOUNT_CORRELATION_POLICY_VIOLATIONS, attributeName&#x3D;policyViolations}, {displayLabel&#x3D;TASK_OUT_ACCOUNT_CORRELATION_POLICY_NOTIFICATIONS, attributeName&#x3D;policyNotifications}, {displayLabel&#x3D;TASK_OUT_ACCOUNT_CORRELATION_SCORES_CHANGED, attributeName&#x3D;scoresChanged}, {displayLabel&#x3D;TASK_OUT_ACCOUNT_CORRELATION_SNAPSHOTS_CREATED, attributeName&#x3D;snapshotsCreated}, {displayLabel&#x3D;TASK_OUT_ACCOUNT_CORRELATION_SCOPES_CREATED, attributeName&#x3D;scopesCreated}, {displayLabel&#x3D;TASK_OUT_ACCOUNT_CORRELATION_SCOPES_CORRELATED, attributeName&#x3D;scopesCorrelated}, {displayLabel&#x3D;TASK_OUT_ACCOUNT_CORRELATION_SCOPES_SELECTED, attributeName&#x3D;scopesSelected}, {displayLabel&#x3D;TASK_OUT_ACCOUNT_CORRELATION_SCOPES_DORMANT, attributeName&#x3D;scopesDormant}, {displayLabel&#x3D;TASK_OUT_ACCOUNT_CORRELATION_UNSCOPED_IDENTITIES, attributeName&#x3D;unscopedIdentities}, {displayLabel&#x3D;TASK_OUT_ACCOUNT_CORRELATION_CERTIFICATIONS_CREATED, attributeName&#x3D;certificationsCreated}, {displayLabel&#x3D;TASK_OUT_ACCOUNT_CORRELATION_CERTIFICATIONS_DELETED, attributeName&#x3D;certificationsDeleted}, {displayLabel&#x3D;TASK_OUT_ACCOUNT_CORRELATION_APPLICATIONS_GENERATED, attributeName&#x3D;applicationsGenerated}, {displayLabel&#x3D;TASK_OUT_ACCOUNT_CORRELATION_MANAGED_ATTRIBUTES_PROMOTED, attributeName&#x3D;managedAttributesCreated}, {displayLabel&#x3D;TASK_OUT_ACCOUNT_CORRELATION_MANAGED_ATTRIBUTES_PROMOTED_BY_APP, attributeName&#x3D;managedAttributesCreatedByApplication}, {displayLabel&#x3D;TASK_OUT_ACCOUNT_CORRELATION_IDENTITYENTITLEMENTS_CREATED, attributeName&#x3D;identityEntitlementsCreated}, {displayLabel&#x3D;TASK_OUT_ACCOUNT_CORRELATION_GROUPS_CREATED, attributeName&#x3D;groupsCreated}]
```

- Convert the resource to JSON
```powershell
$LoadUncorrelatedAccountsTaskTask | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

