# AccountUncorrelatedSource
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** | The DTO type of the source the accounts are uncorrelated from. | 
**Id** | **String** | The ID of the source the accounts are uncorrelated from. | 
**Name** | **String** | Display name of the source the accounts are uncorrelated from. | 

## Examples

- Prepare the resource
```powershell
$AccountUncorrelatedSource = Initialize-BetaAccountUncorrelatedSource  -Type SOURCE `
 -Id 2c6180835d191a86015d28455b4b231b `
 -Name Corporate Directory
```

- Convert the resource to JSON
```powershell
$AccountUncorrelatedSource | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

