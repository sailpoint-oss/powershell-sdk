# PasswordStatus
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**RequestId** | **String** | The password change request ID | [optional] 
**State** | **String** | Password change state | [optional] 
**Errors** | **String[]** | The errors during the password change request | [optional] 
**SourceIds** | **String[]** | List of source IDs in the password change request | [optional] 

## Examples

- Prepare the resource
```powershell
$PasswordStatus = Initialize-Tm.V3PasswordStatus  -RequestId 089899f13a8f4da7824996191587bab9 `
 -State IN_PROGRESS `
 -Errors [The password change payload is invalid] `
 -SourceIds [2c918083746f642c01746f990884012a]
```

- Convert the resource to JSON
```powershell
$PasswordStatus | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

