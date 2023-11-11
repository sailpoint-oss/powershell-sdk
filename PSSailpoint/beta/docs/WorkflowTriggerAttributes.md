# WorkflowTriggerAttributes
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | The unique ID of the trigger | 
**VarFilter** | **String** | JSON path expression that will limit which events the trigger will fire on | [optional] 
**Name** | **String** | A unique name for the external trigger | 
**Description** | **String** | Additonal context about the external trigger | [optional] 
**CronString** | **String** | A valid CRON expression | 

## Examples

- Prepare the resource
```powershell
$WorkflowTriggerAttributes = Initialize-BetaWorkflowTriggerAttributes  -Id idn:identity-attributes-changed `
 -VarFilter $.changes[?(@.attribute &#x3D;&#x3D; &#39;manager&#39;)] `
 -Name search-and-notify `
 -Description Run a search and notify the results `
 -CronString 0 * */3 */5 *
```

- Convert the resource to JSON
```powershell
$WorkflowTriggerAttributes | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

