# CreateExternalExecuteWorkflowRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarInput** | [**SystemCollectionsHashtable**](.md) | The input for the workflow | [optional] 

## Examples

- Prepare the resource
```powershell
$CreateExternalExecuteWorkflowRequest = Initialize-Tm.V2024CreateExternalExecuteWorkflowRequest  -VarInput {customAttribute1&#x3D;value1, customAttribute2&#x3D;value2}
```

- Convert the resource to JSON
```powershell
$CreateExternalExecuteWorkflowRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

