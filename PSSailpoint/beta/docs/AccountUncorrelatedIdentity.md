# AccountUncorrelatedIdentity
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** | DTO type of the identity the account is uncorrelated with. | 
**Id** | **String** | ID of the identity the account is uncorrelated with. | 
**Name** | **String** | Display name of the identity the account is uncorrelated with. | 

## Examples

- Prepare the resource
```powershell
$AccountUncorrelatedIdentity = Initialize-BetaAccountUncorrelatedIdentity  -Type IDENTITY `
 -Id 2c3780a46faadee4016fb4e018c20652 `
 -Name Allen Albertson
```

- Convert the resource to JSON
```powershell
$AccountUncorrelatedIdentity | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

