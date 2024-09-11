# RecommenderCalculations
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**IdentityId** | **String** | The ID of the identity | [optional] 
**EntitlementId** | **String** | The entitlement ID | [optional] 
**Recommendation** | **String** | The actual recommendation | [optional] 
**OverallWeightedScore** | **Decimal** | The overall weighted score | [optional] 
**FeatureWeightedScores** | **System.Collections.Hashtable** | The weighted score of each individual feature | [optional] 
**Threshold** | **Decimal** | The configured value against which the overallWeightedScore is compared | [optional] 
**IdentityAttributes** | [**System.Collections.Hashtable**](RecommenderCalculationsIdentityAttributesValue.md) | The values for your configured features | [optional] 
**FeatureValues** | [**FeatureValueDto**](FeatureValueDto.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$RecommenderCalculations = Initialize-Tm.V2024RecommenderCalculations  -IdentityId 2c91808457d8f3ab0157e3e62cb4213c `
 -EntitlementId 2c91809050db617d0150e0bf3215385e `
 -Recommendation YES `
 -OverallWeightedScore null `
 -FeatureWeightedScores null `
 -Threshold null `
 -IdentityAttributes null `
 -FeatureValues null
```

- Convert the resource to JSON
```powershell
$RecommenderCalculations | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

