# WorkflowTrigger
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** | The trigger type | 
**DisplayName** | **String** |  | [optional] 
**Attributes** | [**WorkflowTriggerAttributes**](WorkflowTriggerAttributes.md) |  | 

## Examples

- Prepare the resource
```powershell
$WorkflowTrigger = Initialize-PSSailpoint.BetaWorkflowTrigger  -Type EVENT `
 -DisplayName null `
 -Attributes null
```

- Convert the resource to JSON
```powershell
$WorkflowTrigger | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

