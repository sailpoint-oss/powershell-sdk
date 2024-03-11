# RoleMatchDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**RoleName** | **String** | The name of the role | [optional] 
**MatchedAttributes** | [**ContextAttributeDto[]**](ContextAttributeDto.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$RoleMatchDto = Initialize-PSSailpointBetaRoleMatchDto  -RoleName Engineer `
 -MatchedAttributes null
```

- Convert the resource to JSON
```powershell
$RoleMatchDto | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

