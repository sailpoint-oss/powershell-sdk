# EntitlementSourceResetBaseReferenceDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** | The DTO type | [optional] 
**Id** | **String** | The task ID of the object to which this reference applies | [optional] 
**Name** | **String** | Human-readable display name of the object to which this reference applies | [optional] 

## Examples

- Prepare the resource
```powershell
$EntitlementSourceResetBaseReferenceDto = Initialize-Tm.BetaEntitlementSourceResetBaseReferenceDto  -Type TASK_RESULT `
 -Id 2c91808568c529c60168cca6f90c1313 `
 -Name Entitlement Source Reset
```

- Convert the resource to JSON
```powershell
$EntitlementSourceResetBaseReferenceDto | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

