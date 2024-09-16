# TestExternalExecuteWorkflowRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarInput** | [**SystemCollectionsHashtable**](.md) | The test input for the workflow | [optional] 

## Examples

- Prepare the resource
```powershell
$TestExternalExecuteWorkflowRequest = Initialize-PSSailpoint.V3TestExternalExecuteWorkflowRequest  -VarInput {test&#x3D;hello world}
```

- Convert the resource to JSON
```powershell
$TestExternalExecuteWorkflowRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

