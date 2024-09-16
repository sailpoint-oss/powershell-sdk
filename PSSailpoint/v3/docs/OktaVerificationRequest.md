# OktaVerificationRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**UserId** | **String** | User identifier for Verification request. The value of the user&#39;s attribute. | 

## Examples

- Prepare the resource
```powershell
$OktaVerificationRequest = Initialize-PSSailpoint.V3OktaVerificationRequest  -UserId example@mail.com
```

- Convert the resource to JSON
```powershell
$OktaVerificationRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

