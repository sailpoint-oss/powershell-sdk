# ConfigurationItemResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Identity** | [**Identity1**](Identity1.md) |  | [optional] 
**ConfigDetails** | [**ConfigurationDetailsResponse[]**](ConfigurationDetailsResponse.md) | Details of how work should be reassigned for an Identity | [optional] 

## Examples

- Prepare the resource
```powershell
$ConfigurationItemResponse = Initialize-Tm.BetaConfigurationItemResponse  -Identity null `
 -ConfigDetails null
```

- Convert the resource to JSON
```powershell
$ConfigurationItemResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

