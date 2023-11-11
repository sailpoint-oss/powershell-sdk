# RecommendationRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**IdentityId** | **String** | The identity ID | [optional] 
**Item** | [**AccessItemRef**](AccessItemRef.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$RecommendationRequest = Initialize-BetaRecommendationRequest  -IdentityId 2c938083633d259901633d25c68c00fa `
 -Item null
```

- Convert the resource to JSON
```powershell
$RecommendationRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

