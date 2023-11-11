# AccessRequestRecommendationItemDetail
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**IdentityId** | **String** | Identity ID for the recommendation | [optional] 
**Access** | [**AccessRequestRecommendationItemDetailAccess**](AccessRequestRecommendationItemDetailAccess.md) |  | [optional] 
**Ignored** | **Boolean** | Whether or not the identity has already chosen to ignore this recommendation. | [optional] 
**Requested** | **Boolean** | Whether or not the identity has already chosen to request this recommendation. | [optional] 
**Viewed** | **Boolean** | Whether or not the identity reportedly viewed this recommendation. | [optional] 
**Messages** | [**AccessRecommendationMessage[]**](AccessRecommendationMessage.md) |  | [optional] 
**TranslationMessages** | [**TranslationMessage[]**](TranslationMessage.md) | The list of translation messages | [optional] 

## Examples

- Prepare the resource
```powershell
$AccessRequestRecommendationItemDetail = Initialize-BetaAccessRequestRecommendationItemDetail  -IdentityId 2c91808570313110017040b06f344ec9 `
 -Access null `
 -Ignored true `
 -Requested true `
 -Viewed true `
 -Messages null `
 -TranslationMessages [{key&#x3D;recommender-api.V2_WEIGHT_FEATURE_PRODUCT_INTERPRETATION_HIGH, values&#x3D;[75, department]}]
```

- Convert the resource to JSON
```powershell
$AccessRequestRecommendationItemDetail | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

