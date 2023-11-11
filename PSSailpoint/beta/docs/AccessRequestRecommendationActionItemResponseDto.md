# AccessRequestRecommendationActionItemResponseDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**IdentityId** | **String** | The identity ID taking the action. | [optional] 
**Access** | [**AccessRequestRecommendationItem**](AccessRequestRecommendationItem.md) |  | [optional] 
**Timestamp** | **System.DateTime** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$AccessRequestRecommendationActionItemResponseDto = Initialize-BetaAccessRequestRecommendationActionItemResponseDto  -IdentityId 2c91808570313110017040b06f344ec9 `
 -Access null `
 -Timestamp 2017-07-11T18:45:37.098Z
```

- Convert the resource to JSON
```powershell
$AccessRequestRecommendationActionItemResponseDto | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

