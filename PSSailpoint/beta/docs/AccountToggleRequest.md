# AccountToggleRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ExternalVerificationId** | **String** | If set, an external process validates that the user wants to proceed with this request. | [optional] 
**ForceProvisioning** | **Boolean** | If set, provisioning updates the account attribute at the source.   This option is used when the account is not synced to ensure the attribute is updated. | [optional] 

## Examples

- Prepare the resource
```powershell
$AccountToggleRequest = Initialize-PSSailpoint.BetaAccountToggleRequest  -ExternalVerificationId 3f9180835d2e5168015d32f890ca1581 `
 -ForceProvisioning false
```

- Convert the resource to JSON
```powershell
$AccountToggleRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

