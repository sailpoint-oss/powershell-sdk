# MetricAggregation
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** | The name of the metric aggregate to be included in the result. If the metric aggregation is omitted, the resulting aggregation will be a count of the documents in the search results. | 
**Type** | [**MetricType**](MetricType.md) |  | [optional] 
**Field** | **String** | The field the calculation is performed on.  Prefix the field name with &#39;@&#39; to reference a nested object.  | 

## Examples

- Prepare the resource
```powershell
$MetricAggregation = Initialize-MetricAggregation  -Name Access Name Count `
 -Type null `
 -Field @access.name
```

- Convert the resource to JSON
```powershell
$MetricAggregation | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

