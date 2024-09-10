# JsonPatchOperations
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Op** | **String** | The operation to be performed | 
**Path** | **String** | A string representing the target path to an element to be affected by the operation | 
**Value** | [**JsonPatchOperationsValue**](JsonPatchOperationsValue.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$JsonPatchOperations = Initialize-PSSailpointBetaJsonPatchOperations  -Op replace `
 -Path /dismissed `
 -Value null
```

- Convert the resource to JSON
```powershell
$JsonPatchOperations | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

