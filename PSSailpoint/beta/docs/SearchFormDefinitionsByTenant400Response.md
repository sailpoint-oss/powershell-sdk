# SearchFormDefinitionsByTenant400Response
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**DetailCode** | **String** |  | [optional] 
**Messages** | [**ErrorMessage[]**](ErrorMessage.md) |  | [optional] 
**StatusCode** | **Int64** |  | [optional] 
**TrackingId** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$SearchFormDefinitionsByTenant400Response = Initialize-BetaSearchFormDefinitionsByTenant400Response  -DetailCode null `
 -Messages null `
 -StatusCode null `
 -TrackingId null
```

- Convert the resource to JSON
```powershell
$SearchFormDefinitionsByTenant400Response | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

