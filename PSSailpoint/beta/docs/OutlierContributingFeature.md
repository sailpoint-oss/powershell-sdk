# OutlierContributingFeature
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | Contributing feature id | [optional] 
**Name** | **String** | The name of the feature | [optional] 
**ValueType** | **String** | The data type of the value field | [optional] 
**Value** | [**OutlierContributingFeatureValue**](OutlierContributingFeatureValue.md) |  | [optional] 
**Importance** | **Double** | The importance of the feature. This can also be a negative value | [optional] 
**DisplayName** | **String** | The (translated if header is passed) displayName for the feature | [optional] 
**Description** | **String** | The (translated if header is passed) description for the feature | [optional] 
**TranslationMessages** | [**OutlierFeatureTranslation**](OutlierFeatureTranslation.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$OutlierContributingFeature = Initialize-BetaOutlierContributingFeature  -Id 66e38828-5017-47af-92ff-9844871352c5 `
 -Name entitlement_count `
 -ValueType INTEGER `
 -Value null `
 -Importance -0.15 `
 -DisplayName Number of entitlements `
 -Description The total number of entitlements belonging to an identity `
 -TranslationMessages null
```

- Convert the resource to JSON
```powershell
$OutlierContributingFeature | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

