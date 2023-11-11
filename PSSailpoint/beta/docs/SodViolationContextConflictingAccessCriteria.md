# SodViolationContextConflictingAccessCriteria
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**LeftCriteria** | [**SodViolationContextConflictingAccessCriteriaLeftCriteria**](SodViolationContextConflictingAccessCriteriaLeftCriteria.md) |  | [optional] 
**RightCriteria** | [**SodViolationContextConflictingAccessCriteriaLeftCriteria**](SodViolationContextConflictingAccessCriteriaLeftCriteria.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$SodViolationContextConflictingAccessCriteria = Initialize-BetaSodViolationContextConflictingAccessCriteria  -LeftCriteria null `
 -RightCriteria null
```

- Convert the resource to JSON
```powershell
$SodViolationContextConflictingAccessCriteria | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

