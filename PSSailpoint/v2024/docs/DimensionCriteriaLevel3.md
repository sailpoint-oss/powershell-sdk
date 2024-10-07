# DimensionCriteriaLevel3
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Operation** | [**DimensionCriteriaOperation**](DimensionCriteriaOperation.md) |  | [optional] 
**Key** | [**DimensionCriteriaKey**](DimensionCriteriaKey.md) |  | [optional] 
**StringValue** | **String** | String value to test the Identity attribute specified in the key w/r/t the specified operation. If this criteria is a leaf node, that is, if the operation is one of EQUALS, this field is required. Otherwise, specifying it is an error. | [optional] 

## Examples

- Prepare the resource
```powershell
$DimensionCriteriaLevel3 = Initialize-PSSailpoint.V2024DimensionCriteriaLevel3  -Operation null `
 -Key null `
 -StringValue carlee.cert1c9f9b6fd@mailinator.com
```

- Convert the resource to JSON
```powershell
$DimensionCriteriaLevel3 | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

