# TaskDefinitionSummary
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | System-generated unique ID of the TaskDefinition | 
**UniqueName** | **String** | Name of the TaskDefinition | 
**Description** | **String** | Description of the TaskDefinition | 
**ParentName** | **String** | Name of the parent of the TaskDefinition | 
**Executor** | **String** | Executor of the TaskDefinition | 
**Arguments** | [**System.Collections.Hashtable**](AnyType.md) | Formal parameters of the TaskDefinition, without values | 

## Examples

- Prepare the resource
```powershell
$TaskDefinitionSummary = Initialize-Tm.V2024TaskDefinitionSummary  -Id 2c91808475b4334b0175e1dff64b63c5 `
 -UniqueName Cloud Account Aggregation `
 -Description Aggregates from the specified application. `
 -ParentName Cloud Account Aggregation `
 -Executor sailpoint.task.ServiceTaskExecutor `
 -Arguments null
```

- Convert the resource to JSON
```powershell
$TaskDefinitionSummary | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

