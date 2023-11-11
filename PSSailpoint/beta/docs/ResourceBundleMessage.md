# ResourceBundleMessage
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Key** | **String** | The key of the message | [optional] 
**Format** | **String** | The format of the message | [optional] 

## Examples

- Prepare the resource
```powershell
$ResourceBundleMessage = Initialize-BetaResourceBundleMessage  -Key recommender-api.V2_WEIGHT_FEATURE_PRODUCT_INTERPRETATION_LOW `
 -Format {0,,\&quot;i18n hint: percentage\&quot;}% of identities with the same {1,,\&quot;i18n hint: name of category feature\&quot;} have this access. This information had a low impact on the overall score.
```

- Convert the resource to JSON
```powershell
$ResourceBundleMessage | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

