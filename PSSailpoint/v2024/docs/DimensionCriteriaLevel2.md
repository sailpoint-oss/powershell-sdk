# DimensionCriteriaLevel2
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Operation** | [**DimensionCriteriaOperation**](DimensionCriteriaOperation.md) |  | [optional] 
**Key** | [**DimensionCriteriaKey**](DimensionCriteriaKey.md) |  | [optional] 
**StringValue** | **String** | String value to test the Identity attribute specified in the key w/r/t the specified operation. If this criteria is a leaf node, that is, if the operation is one of EQUALS, this field is required. Otherwise, specifying it is an error. | [optional] 
**Children** | [**DimensionCriteriaLevel3[]**](DimensionCriteriaLevel3.md) | Array of child criteria. Required if the operation is AND or OR, otherwise it must be left null. A maximum of three levels of criteria are supported, including leaf nodes. Additionally, AND nodes can only be children or OR nodes and vice-versa. | [optional] 

## Examples

- Prepare the resource
```powershell
$DimensionCriteriaLevel2 = Initialize-PSSailpoint.V2024DimensionCriteriaLevel2  -Operation null `
 -Key null `
 -StringValue carlee.cert1c9f9b6fd@mailinator.com `
 -Children null
```

- Convert the resource to JSON
```powershell
$DimensionCriteriaLevel2 | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

