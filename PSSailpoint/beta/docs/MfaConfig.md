# MfaConfig
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Enabled** | **Boolean** | If MFA method is enabled. | [optional] 
**VarHost** | **String** | The server host name or IP address of the MFA provider. | [optional] 
**AccessKey** | **String** | The secret key for authenticating requests to the MFA provider. | [optional] 
**IdentityAttribute** | **String** | Optional. The name of the attribute for mapping IdentityNow identity to the MFA provider. | [optional] 

## Examples

- Prepare the resource
```powershell
$MfaConfig = Initialize-PSSailpointBetaMfaConfig  -Enabled null `
 -VarHost example.com `
 -AccessKey null `
 -IdentityAttribute email
```

- Convert the resource to JSON
```powershell
$MfaConfig | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

