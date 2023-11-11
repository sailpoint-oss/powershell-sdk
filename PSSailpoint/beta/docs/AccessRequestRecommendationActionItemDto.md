# AccessRequestRecommendationActionItemDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**IdentityId** | **String** | The identity ID taking the action. | 
**Access** | [**AccessRequestRecommendationItem**](AccessRequestRecommendationItem.md) |  | 

## Examples

- Prepare the resource
```powershell
$AccessRequestRecommendationActionItemDto = Initialize-BetaAccessRequestRecommendationActionItemDto  -IdentityId 2c91808570313110017040b06f344ec9 `
 -Access null
```

- Convert the resource to JSON
```powershell
$AccessRequestRecommendationActionItemDto | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

