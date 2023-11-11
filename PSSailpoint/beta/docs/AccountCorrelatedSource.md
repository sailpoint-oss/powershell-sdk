# AccountCorrelatedSource
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** | The DTO type of the source the accounts are being correlated from. | 
**Id** | **String** | The ID of the source the accounts are being correlated from. | 
**Name** | **String** | Display name of the source the accounts are being correlated from. | 

## Examples

- Prepare the resource
```powershell
$AccountCorrelatedSource = Initialize-BetaAccountCorrelatedSource  -Type SOURCE `
 -Id 2c9180835d191a86015d28455b4b232a `
 -Name HR Active Directory
```

- Convert the resource to JSON
```powershell
$AccountCorrelatedSource | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

