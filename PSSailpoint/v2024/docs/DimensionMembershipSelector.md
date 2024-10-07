# DimensionMembershipSelector
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | [**DimensionMembershipSelectorType**](DimensionMembershipSelectorType.md) |  | [optional] 
**Criteria** | [**DimensionCriteriaLevel1**](DimensionCriteriaLevel1.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$DimensionMembershipSelector = Initialize-PSSailpoint.V2024DimensionMembershipSelector  -Type null `
 -Criteria null
```

- Convert the resource to JSON
```powershell
$DimensionMembershipSelector | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

