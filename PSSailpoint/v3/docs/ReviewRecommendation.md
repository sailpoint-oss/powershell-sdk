# ReviewRecommendation
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Recommendation** | **String** | The recommendation from IAI at the time of the decision. This field will be null if no recommendation was made. | [optional] 
**Reasons** | **String[]** | A list of reasons for the recommendation. | [optional] 
**Timestamp** | **System.DateTime** | The time at which the recommendation was recorded. | [optional] 

## Examples

- Prepare the resource
```powershell
$ReviewRecommendation = Initialize-PSSailpoint.V3ReviewRecommendation  -Recommendation null `
 -Reasons [Reason 1, Reason 2] `
 -Timestamp 2020-06-01T13:49:37.385Z
```

- Convert the resource to JSON
```powershell
$ReviewRecommendation | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

