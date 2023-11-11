# SodViolationContext1
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Policy** | [**SodPolicyDto**](SodPolicyDto.md) |  | [optional] 
**ConflictingAccessCriteria** | [**SodViolationContext1ConflictingAccessCriteria**](SodViolationContext1ConflictingAccessCriteria.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$SodViolationContext1 = Initialize-BetaSodViolationContext1  -Policy null `
 -ConflictingAccessCriteria null
```

- Convert the resource to JSON
```powershell
$SodViolationContext1 | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

