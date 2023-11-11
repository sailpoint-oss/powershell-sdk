# AccountsCollectedForAggregation
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Source** | [**AccountsCollectedForAggregationSource**](AccountsCollectedForAggregationSource.md) |  | 
**Status** | [**SystemCollectionsHashtable**](.md) | The overall status of the collection. | 
**Started** | **System.DateTime** | The date and time when the account collection started. | 
**Completed** | **System.DateTime** | The date and time when the account collection finished. | 
**Errors** | **String[]** | A list of errors that occurred during the collection. | 
**Warnings** | **String[]** | A list of warnings that occurred during the collection. | 
**Stats** | [**AccountsCollectedForAggregationStats**](AccountsCollectedForAggregationStats.md) |  | 

## Examples

- Prepare the resource
```powershell
$AccountsCollectedForAggregation = Initialize-BetaAccountsCollectedForAggregation  -Source null `
 -Status Success `
 -Started 2020-06-29T22:01:50.474Z `
 -Completed 2020-06-29T22:02:04.090Z `
 -Errors null `
 -Warnings null `
 -Stats null
```

- Convert the resource to JSON
```powershell
$AccountsCollectedForAggregation | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

