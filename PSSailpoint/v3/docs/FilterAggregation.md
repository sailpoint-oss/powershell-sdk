# FilterAggregation
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** | The name of the filter aggregate to be included in the result. | 
**Type** | [**SearchFilterType**](SearchFilterType.md) |  | [optional] 
**Field** | **String** | The search field to apply the filter to.  Prefix the field name with &#39;@&#39; to reference a nested object.  | 
**Value** | **String** | The value to filter on. | 

## Examples

- Prepare the resource
```powershell
$FilterAggregation = Initialize-FilterAggregation  -Name Entitlements `
 -Type null `
 -Field access.type `
 -Value ENTITLEMENT
```

- Convert the resource to JSON
```powershell
$FilterAggregation | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

