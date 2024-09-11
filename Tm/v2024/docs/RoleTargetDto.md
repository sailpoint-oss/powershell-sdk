# RoleTargetDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Source** | [**BaseReferenceDto1**](BaseReferenceDto1.md) |  | [optional] 
**AccountInfo** | [**AccountInfoDto**](AccountInfoDto.md) |  | [optional] 
**RoleName** | **String** | Specific role name for this target if using multiple accounts | [optional] 

## Examples

- Prepare the resource
```powershell
$RoleTargetDto = Initialize-Tm.V2024RoleTargetDto  -Source null `
 -AccountInfo null `
 -RoleName Marketing
```

- Convert the resource to JSON
```powershell
$RoleTargetDto | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

