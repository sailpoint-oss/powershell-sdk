# AccountStatusChanged
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EventType** | **String** | the event type | [optional] 
**IdentityId** | **String** | the identity id | [optional] 
**Dt** | **String** | the date of event | [optional] 
**Account** | [**AccountStatusChangedAccount**](AccountStatusChangedAccount.md) |  | [optional] 
**StatusChange** | [**AccountStatusChangedStatusChange**](AccountStatusChangedStatusChange.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$AccountStatusChanged = Initialize-BetaAccountStatusChanged  -EventType null `
 -IdentityId null `
 -Dt null `
 -Account null `
 -StatusChange null
```

- Convert the resource to JSON
```powershell
$AccountStatusChanged | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

