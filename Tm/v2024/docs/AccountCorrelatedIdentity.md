# AccountCorrelatedIdentity
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** | DTO type of the identity the account is correlated with. | 
**Id** | **String** | ID of the identity the account is correlated with. | 
**Name** | **String** | Display name of the identity the account is correlated with. | 

## Examples

- Prepare the resource
```powershell
$AccountCorrelatedIdentity = Initialize-Tm.V2024AccountCorrelatedIdentity  -Type IDENTITY `
 -Id 2c7180a46faadee4016fb4e018c20642 `
 -Name Michael Michaels
```

- Convert the resource to JSON
```powershell
$AccountCorrelatedIdentity | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

