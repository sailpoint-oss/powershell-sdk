# RoleMatchDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**RoleRef** | [**BaseReferenceDto1**](BaseReferenceDto1.md) |  | [optional] 
**MatchedAttributes** | [**ContextAttributeDto[]**](ContextAttributeDto.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$RoleMatchDto = Initialize-PSSailpoint.BetaRoleMatchDto  -RoleRef null `
 -MatchedAttributes null
```

- Convert the resource to JSON
```powershell
$RoleMatchDto | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

