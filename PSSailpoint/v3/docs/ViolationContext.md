# ViolationContext
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Policy** | [**ViolationContextPolicy**](ViolationContextPolicy.md) |  | [optional] 
**ConflictingAccessCriteria** | [**ExceptionAccessCriteria**](ExceptionAccessCriteria.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ViolationContext = Initialize-ViolationContext  -Policy null `
 -ConflictingAccessCriteria null
```

- Convert the resource to JSON
```powershell
$ViolationContext | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

