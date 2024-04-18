# LoadAccountsTaskTask
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | System-generated unique ID of the task this taskStatus represents | [optional] 
**Type** | **String** | Type of task this task represents | [optional] 
**Name** | **String** | The name of the aggregation process | [optional] 
**Description** | **String** | The description of the task | [optional] 
**Launcher** | **String** | The user who initiated the task | [optional] 
**Created** | **System.DateTime** | The Task creation date | [optional] 
**Launched** | **System.DateTime** | The task start date | [optional] 
**Completed** | **System.DateTime** | The task completion date | [optional] 
**CompletionStatus** | **String** | Task completion status. | [optional] 
**ParentName** | **String** | Name of the parent task if exists. | [optional] 
**Messages** | [**LoadAccountsTaskTaskMessagesInner[]**](LoadAccountsTaskTaskMessagesInner.md) | List of the messages dedicated to the report.  From task definition perspective here usually should be warnings or errors. | [optional] 
**Progress** | **String** | Current task state. | [optional] 
**Attributes** | [**LoadAccountsTaskTaskAttributes**](LoadAccountsTaskTaskAttributes.md) |  | [optional] 
**Returns** | [**SystemCollectionsHashtable**](.md) | Return values from the task | [optional] 

## Examples

- Prepare the resource
```powershell
$LoadAccountsTaskTask = Initialize-PSSailpointBetaLoadAccountsTaskTask  -Id ef38f94347e94562b5bb8424a56397d8 `
 -Type QUARTZ `
 -Name Cloud Account Aggregation `
 -Description Aggregate from the specified application `
 -Launcher John Doe `
 -Created null `
 -Launched null `
 -Completed null `
 -CompletionStatus Success `
 -ParentName Audit Report `
 -Messages [] `
 -Progress Initializing... `
 -Attributes null `
 -Returns [{displayLabel&#x3D;TASK_OUT_ACCOUNT_AGGREGATION_APPLICATIONS, attributeName&#x3D;applications}, {displayLabel&#x3D;TASK_OUT_ACCOUNT_AGGREGATION_TOTAL, attributeName&#x3D;total}, {displayLabel&#x3D;TASK_OUT_ACCOUNT_AGGREGATION_OPTIMIZED, attributeName&#x3D;optimizedAggregation}, {displayLabel&#x3D;TASK_OUT_ACCOUNT_AGGREGATION_IGNORED, attributeName&#x3D;ignored}, {displayLabel&#x3D;TASK_OUT_UNCHANGED_ACCOUNTS, attributeName&#x3D;optimized}, {displayLabel&#x3D;TASK_OUT_ACCOUNT_AGGREGATION_CREATED, attributeName&#x3D;created}, {displayLabel&#x3D;TASK_OUT_ACCOUNT_AGGREGATION_UPDATED, attributeName&#x3D;updated}, {displayLabel&#x3D;TASK_OUT_ACCOUNT_AGGREGATION_DELETED, attributeName&#x3D;deleted}, {displayLabel&#x3D;TASK_OUT_ACCOUNT_AGGREGATION_MANAGER_CHANGES, attributeName&#x3D;managerChanges}, {displayLabel&#x3D;TASK_OUT_ACCOUNT_AGGREGATION_BUSINESS_ROLE_CHANGES, attributeName&#x3D;detectedRoleChanges}, {displayLabel&#x3D;TASK_OUT_ACCOUNT_AGGREGATION_EXCEPTION_CHANGES, attributeName&#x3D;exceptionChanges}, {displayLabel&#x3D;TASK_OUT_ACCOUNT_AGGREGATION_POLICIES, attributeName&#x3D;policies}, {displayLabel&#x3D;TASK_OUT_ACCOUNT_AGGREGATION_POLICY_VIOLATIONS, attributeName&#x3D;policyViolations}, {displayLabel&#x3D;TASK_OUT_ACCOUNT_AGGREGATION_POLICY_NOTIFICATIONS, attributeName&#x3D;policyNotifications}, {displayLabel&#x3D;TASK_OUT_ACCOUNT_AGGREGATION_SCORES_CHANGED, attributeName&#x3D;scoresChanged}, {displayLabel&#x3D;TASK_OUT_ACCOUNT_AGGREGATION_SNAPSHOTS_CREATED, attributeName&#x3D;snapshotsCreated}, {displayLabel&#x3D;TASK_OUT_ACCOUNT_AGGREGATION_SCOPES_CREATED, attributeName&#x3D;scopesCreated}, {displayLabel&#x3D;TASK_OUT_ACCOUNT_AGGREGATION_SCOPES_CORRELATED, attributeName&#x3D;scopesCorrelated}, {displayLabel&#x3D;TASK_OUT_ACCOUNT_AGGREGATION_SCOPES_SELECTED, attributeName&#x3D;scopesSelected}, {displayLabel&#x3D;TASK_OUT_ACCOUNT_AGGREGATION_SCOPES_DORMANT, attributeName&#x3D;scopesDormant}, {displayLabel&#x3D;TASK_OUT_ACCOUNT_AGGREGATION_UNSCOPED_IDENTITIES, attributeName&#x3D;unscopedIdentities}, {displayLabel&#x3D;TASK_OUT_ACCOUNT_AGGREGATION_CERTIFICATIONS_CREATED, attributeName&#x3D;certificationsCreated}, {displayLabel&#x3D;TASK_OUT_ACCOUNT_AGGREGATION_CERTIFICATIONS_DELETED, attributeName&#x3D;certificationsDeleted}, {displayLabel&#x3D;TASK_OUT_ACCOUNT_AGGREGATION_APPLICATIONS_GENERATED, attributeName&#x3D;applicationsGenerated}, {displayLabel&#x3D;TASK_OUT_ACCOUNT_AGGREGATION_MANAGED_ATTRIBUTES_PROMOTED, attributeName&#x3D;managedAttributesCreated}, {displayLabel&#x3D;TASK_OUT_ACCOUNT_AGGREGATION_MANAGED_ATTRIBUTES_PROMOTED_BY_APP, attributeName&#x3D;managedAttributesCreatedByApplication}, {displayLabel&#x3D;TASK_OUT_ACCOUNT_AGGREGATION_IDENTITYENTITLEMENTS_CREATED, attributeName&#x3D;identityEntitlementsCreated}, {displayLabel&#x3D;TASK_OUT_ACCOUNT_AGGREGATION_GROUPS_CREATED, attributeName&#x3D;groupsCreated}]
```

- Convert the resource to JSON
```powershell
$LoadAccountsTaskTask | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

