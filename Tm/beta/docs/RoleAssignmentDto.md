# RoleAssignmentDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | Assignment Id | [optional] 
**Role** | [**BaseReferenceDto**](BaseReferenceDto.md) |  | [optional] 
**Comments** | **String** | Comments added by the user when the assignment was made | [optional] 
**AssignmentSource** | **String** | Source describing how this assignment was made | [optional] 
**Assigner** | [**BaseReferenceDto**](BaseReferenceDto.md) |  | [optional] 
**AssignedDimensions** | [**BaseReferenceDto[]**](BaseReferenceDto.md) | Dimensions assigned related to this role | [optional] 
**AssignmentContext** | [**AssignmentContextDto**](AssignmentContextDto.md) |  | [optional] 
**AccountTargets** | [**RoleTargetDto[]**](RoleTargetDto.md) |  | [optional] 
**RemoveDate** | **String** | Date that the assignment will be removed | [optional] 

## Examples

- Prepare the resource
```powershell
$RoleAssignmentDto = Initialize-Tm.BetaRoleAssignmentDto  -Id 1cbb0705b38c4226b1334eadd8874086 `
 -Role null `
 -Comments I&#39;m a new Engineer and need this role to do my work `
 -AssignmentSource UI `
 -Assigner null `
 -AssignedDimensions [{id&#x3D;1acc8ffe5fcf457090de28bee2af36ee, type&#x3D;DIMENSION, name&#x3D;Northeast region}] `
 -AssignmentContext null `
 -AccountTargets null `
 -RemoveDate Wed Feb 14 10:58:42
```

- Convert the resource to JSON
```powershell
$RoleAssignmentDto | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

