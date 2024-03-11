# AccessRequestContext
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**RequestedContext** | [**ContextAttributeDto[]**](ContextAttributeDto.md) |  | [optional] 
**AssignedContext** | [**RoleMatchDto[]**](RoleMatchDto.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$AccessRequestContext = Initialize-PSSailpointBetaAccessRequestContext  -RequestedContext null `
 -AssignedContext null
```

- Convert the resource to JSON
```powershell
$AccessRequestContext | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

