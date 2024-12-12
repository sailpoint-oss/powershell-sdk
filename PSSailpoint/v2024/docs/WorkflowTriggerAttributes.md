# WorkflowTriggerAttributes
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | The unique ID of the trigger | 
**VarFilter** | **String** | JSON path expression that will limit which events the trigger will fire on | [optional] 
**Description** | **String** | Additonal context about the external trigger | [optional] 
**AttributeToFilter** | **String** | The attribute to filter on | [optional] 
**Name** | **String** | A unique name for the external trigger | [optional] 
**ClientId** | **String** | OAuth Client ID to authenticate with this trigger | [optional] 
**Url** | **String** | URL to invoke this workflow | [optional] 
**CronString** | **String** | A valid CRON expression | [optional] 
**Frequency** | **String** | Frequency of execution | 
**TimeZone** | **String** | Time zone identifier | [optional] 
**WeeklyDays** | **String[]** | Scheduled days of the week for execution | [optional] 
**WeeklyTimes** | **String[]** | Scheduled execution times | [optional] 

## Examples

- Prepare the resource
```powershell
$WorkflowTriggerAttributes = Initialize-PSSailpoint.V2024WorkflowTriggerAttributes  -Id idn:identity-attributes-changed `
 -VarFilter $.changes[?(@.attribute &#x3D;&#x3D; &#39;manager&#39;)] `
 -Description Run a search and notify the results `
 -AttributeToFilter LifecycleState `
 -Name search-and-notify `
 -ClientId 87e239b2-b85b-4bde-b9a7-55bf304ddcdc `
 -Url https://tenant.api.identitynow.com/beta/workflows/execute/external/c79e0079-562c-4df5-aa73-60a9e25c916d `
 -CronString 0 9 * * 1 `
 -Frequency null `
 -TimeZone America/Chicago `
 -WeeklyDays Monday `
 -WeeklyTimes Monday
```

- Convert the resource to JSON
```powershell
$WorkflowTriggerAttributes | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

