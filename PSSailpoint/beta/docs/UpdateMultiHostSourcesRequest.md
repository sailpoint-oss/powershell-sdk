# UpdateMultiHostSourcesRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Operations** | [**JsonPatchOperation[]**](JsonPatchOperation.md) | Operations to be applied. | [optional] 

## Examples

- Prepare the resource
```powershell
$UpdateMultiHostSourcesRequest = Initialize-PSSailpoint.BetaUpdateMultiHostSourcesRequest  -Operations null
```

- Convert the resource to JSON
```powershell
$UpdateMultiHostSourcesRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

