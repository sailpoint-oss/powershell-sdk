# WorkflowAllOf
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | Workflow ID. This is a UUID generated upon creation. | [optional] 
**ExecutionCount** | **Int32** | The number of times this workflow has been executed | [optional] 
**FailureCount** | **Int32** | The number of times this workflow has failed during execution | [optional] 
**Created** | **System.DateTime** | The date and time the workflow was created | [optional] 
**Creator** | [**BaseReferenceDto1**](BaseReferenceDto1.md) | The identity that created the workflow. | [optional] 

## Examples

- Prepare the resource
```powershell
$WorkflowAllOf = Initialize-PSSailpointBetaWorkflowAllOf  -Id d201c5e9-d37b-4aff-af14-66414f39d569 `
 -ExecutionCount 2 `
 -FailureCount 0 `
 -Created 2022-01-10T16:06:16.636381447Z `
 -Creator {type&#x3D;IDENTITY, id&#x3D;2c91808568c529c60168cca6f90c1313, name&#x3D;William Wilson}
```

- Convert the resource to JSON
```powershell
$WorkflowAllOf | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

