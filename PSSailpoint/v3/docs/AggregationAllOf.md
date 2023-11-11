# AggregationAllOf
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Status** | **String** |  | [optional] 
**Duration** | **Int32** |  | [optional] 
**AvgDuration** | **Int32** |  | [optional] 
**ChangedAccounts** | **Int32** |  | [optional] 
**NextScheduled** | **System.DateTime** | A date-time in ISO-8601 format | [optional] 
**StartTime** | **System.DateTime** | A date-time in ISO-8601 format | [optional] 
**SourceOwner** | **String** | John Doe | [optional] 

## Examples

- Prepare the resource
```powershell
$AggregationAllOf = Initialize-AggregationAllOf  -Status Success `
 -Duration 20 `
 -AvgDuration 20 `
 -ChangedAccounts 1 `
 -NextScheduled 2018-06-25T20:22:28.104Z `
 -StartTime 2018-06-25T20:22:28.104Z `
 -SourceOwner null
```

- Convert the resource to JSON
```powershell
$AggregationAllOf | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

