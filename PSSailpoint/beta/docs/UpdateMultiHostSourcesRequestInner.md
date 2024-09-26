# UpdateMultiHostSourcesRequestInner
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Op** | **String** | The operation to be performed | 
**Path** | **String** | A string JSON Pointer representing the target path to an element to be affected by the operation | 
**Value** | [**UpdateMultiHostSourcesRequestInnerValue**](UpdateMultiHostSourcesRequestInnerValue.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$UpdateMultiHostSourcesRequestInner = Initialize-PSSailpoint.BetaUpdateMultiHostSourcesRequestInner  -Op replace `
 -Path /description `
 -Value null
```

- Convert the resource to JSON
```powershell
$UpdateMultiHostSourcesRequestInner | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

