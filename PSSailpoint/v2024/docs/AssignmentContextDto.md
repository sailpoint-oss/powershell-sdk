# AssignmentContextDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Requested** | [**AccessRequestContext**](AccessRequestContext.md) |  | [optional] 
**Matched** | [**RoleMatchDto[]**](RoleMatchDto.md) |  | [optional] 
**ComputedDate** | **String** | Date that the assignment will was evaluated | [optional] 

## Examples

- Prepare the resource
```powershell
$AssignmentContextDto = Initialize-PSSailpoint.V2024AssignmentContextDto  -Requested null `
 -Matched null `
 -ComputedDate Wed Feb 14 10:58:42
```

- Convert the resource to JSON
```powershell
$AssignmentContextDto | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

