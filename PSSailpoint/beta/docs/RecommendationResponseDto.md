# RecommendationResponseDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Response** | [**RecommendationResponse[]**](RecommendationResponse.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$RecommendationResponseDto = Initialize-BetaRecommendationResponseDto  -Response null
```

- Convert the resource to JSON
```powershell
$RecommendationResponseDto | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

