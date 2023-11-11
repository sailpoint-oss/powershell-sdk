# AccountAggregationCompletedStats
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Scanned** | **Int32** | The number of accounts which were scanned / iterated over. | 
**Unchanged** | **Int32** | The number of accounts which existed before, but had no changes. | 
**Changed** | **Int32** | The number of accounts which existed before, but had changes. | 
**Added** | **Int32** | The number of accounts which are new - have not existed before. | 
**Removed** | **Int32** | The number accounts which existed before, but no longer exist (thus getting removed). | 

## Examples

- Prepare the resource
```powershell
$AccountAggregationCompletedStats = Initialize-BetaAccountAggregationCompletedStats  -Scanned 200 `
 -Unchanged 190 `
 -Changed 6 `
 -Added 4 `
 -Removed 3
```

- Convert the resource to JSON
```powershell
$AccountAggregationCompletedStats | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

