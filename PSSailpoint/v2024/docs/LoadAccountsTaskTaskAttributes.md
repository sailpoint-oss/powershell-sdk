# LoadAccountsTaskTaskAttributes
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AppId** | **String** | The id of the source | [optional] 
**OptimizedAggregation** | **String** | The indicator if the aggregation process was enabled/disabled for the aggregation job | [optional] 

## Examples

- Prepare the resource
```powershell
$LoadAccountsTaskTaskAttributes = Initialize-PSSailpoint.V2024LoadAccountsTaskTaskAttributes  -AppId c31386cb18bb403cbb6df4c86294ff82 `
 -OptimizedAggregation enabled
```

- Convert the resource to JSON
```powershell
$LoadAccountsTaskTaskAttributes | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

