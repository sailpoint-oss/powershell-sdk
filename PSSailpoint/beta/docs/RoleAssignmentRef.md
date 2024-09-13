# RoleAssignmentRef
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | Assignment Id | [optional] 
**Role** | [**BaseReferenceDto**](BaseReferenceDto.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$RoleAssignmentRef = Initialize-PSSailpoint.BetaRoleAssignmentRef  -Id 1cbb0705b38c4226b1334eadd8874086 `
 -Role null
```

- Convert the resource to JSON
```powershell
$RoleAssignmentRef | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

