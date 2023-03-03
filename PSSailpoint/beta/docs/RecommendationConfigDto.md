# RecommendationConfigDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**RecommenderFeatures** | **String[]** | List of identity attributes to use for calculating certification recommendations | [optional] 
**PeerGroupPercentageThreshold** | **Decimal** | The percent value that the recommendation calculation must surpass to produce a YES recommendation | [optional] 
**ForceRefresh** | **Boolean** | If true, rulesRecommenderConfig will be refreshed with new programatically selected attribute and threshold values on the next pipeline run | [optional] 

## Examples

- Prepare the resource
```powershell
$RecommendationConfigDto = Initialize-PSSailpointBetaRecommendationConfigDto  -RecommenderFeatures [jobTitle, location, peer_group, department, active] `
 -PeerGroupPercentageThreshold 0.5 `
 -ForceRefresh false
```

- Convert the resource to JSON
```powershell
$RecommendationConfigDto | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

