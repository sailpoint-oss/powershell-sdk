# AccountAggregationCompleted
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Source** | [**AccountAggregationCompletedSource**](AccountAggregationCompletedSource.md) |  | 
**Status** | [**SystemCollectionsHashtable**](.md) | The overall status of the aggregation. | 
**Started** | **System.DateTime** | The date and time when the account aggregation started. | 
**Completed** | **System.DateTime** | The date and time when the account aggregation finished. | 
**Errors** | **String[]** | A list of errors that occurred during the aggregation. | 
**Warnings** | **String[]** | A list of warnings that occurred during the aggregation. | 
**Stats** | [**AccountAggregationCompletedStats**](AccountAggregationCompletedStats.md) |  | 

## Examples

- Prepare the resource
```powershell
$AccountAggregationCompleted = Initialize-Tm.BetaAccountAggregationCompleted  -Source null `
 -Status Success `
 -Started 2020-06-29T22:01:50.474Z `
 -Completed 2020-06-29T22:02:04.090Z `
 -Errors null `
 -Warnings null `
 -Stats null
```

- Convert the resource to JSON
```powershell
$AccountAggregationCompleted | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

