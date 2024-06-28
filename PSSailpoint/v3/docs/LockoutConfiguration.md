# LockoutConfiguration
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**MaximumAttempts** | **Int32** | The maximum attempts allowed before lockout occurs. | [optional] 
**LockoutDuration** | **Int32** | The total time in minutes a user will be locked out. | [optional] 
**LockoutWindow** | **Int32** | A rolling window where authentication attempts in a series count towards the maximum before lockout occurs. | [optional] 

## Examples

- Prepare the resource
```powershell
$LockoutConfiguration = Initialize-PSSailpointLockoutConfiguration  -MaximumAttempts 5 `
 -LockoutDuration 15 `
 -LockoutWindow 5
```

- Convert the resource to JSON
```powershell
$LockoutConfiguration | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

