# RecommendationConfigDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**RecommenderFeatures** | **String[]** | List of identity attributes to use for calculating certification recommendations | [optional] 
**PeerGroupPercentageThreshold** | **Double** | The percent value that the recommendation calculation must surpass to produce a YES recommendation | [optional] 
**RunAutoSelectOnce** | **Boolean** | If true, rulesRecommenderConfig will be refreshed with new programatically selected attribute and threshold values on the next pipeline run | [optional] [default to $false]
**OnlyTuneThreshold** | **Boolean** | If true, rulesRecommenderConfig will be refreshed with new programatically selected threshold values on the next pipeline run | [optional] [default to $false]

## Examples

- Prepare the resource
```powershell
$RecommendationConfigDto = Initialize-Tm.BetaRecommendationConfigDto  -RecommenderFeatures [jobTitle, location, peer_group, department, active] `
 -PeerGroupPercentageThreshold 0.5 `
 -RunAutoSelectOnce false `
 -OnlyTuneThreshold false
```

- Convert the resource to JSON
```powershell
$RecommendationConfigDto | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

