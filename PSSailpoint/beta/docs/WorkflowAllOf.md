# WorkflowAllOf
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | Workflow ID. This is a UUID generated upon creation. | [optional] 
**ExecutionCount** | **Int32** | The number of times this workflow has been executed. | [optional] 
**FailureCount** | **Int32** | The number of times this workflow has failed during execution. | [optional] 
**Created** | **System.DateTime** | The date and time the workflow was created. | [optional] 
**Creator** | [**WorkflowAllOfCreator**](WorkflowAllOfCreator.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$WorkflowAllOf = Initialize-BetaWorkflowAllOf  -Id d201c5e9-d37b-4aff-af14-66414f39d569 `
 -ExecutionCount 2 `
 -FailureCount 0 `
 -Created 2022-01-10T16:06:16.636381447Z `
 -Creator null
```

- Convert the resource to JSON
```powershell
$WorkflowAllOf | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

