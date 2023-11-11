# SodViolationContext1ConflictingAccessCriteria
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**LeftCriteria** | [**SodViolationContext1ConflictingAccessCriteriaLeftCriteria**](SodViolationContext1ConflictingAccessCriteriaLeftCriteria.md) |  | [optional] 
**RightCriteria** | [**SodViolationContext1ConflictingAccessCriteriaLeftCriteria**](SodViolationContext1ConflictingAccessCriteriaLeftCriteria.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$SodViolationContext1ConflictingAccessCriteria = Initialize-BetaSodViolationContext1ConflictingAccessCriteria  -LeftCriteria null `
 -RightCriteria null
```

- Convert the resource to JSON
```powershell
$SodViolationContext1ConflictingAccessCriteria | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

