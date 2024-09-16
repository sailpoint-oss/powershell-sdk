# VerificationResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**RequestId** | **String** | The verificationPollRequest request ID | [optional] 
**Status** | **String** | MFA Authentication status | [optional] 
**VarError** | **String** | Error messages from MFA verification request | [optional] 

## Examples

- Prepare the resource
```powershell
$VerificationResponse = Initialize-PSSailpoint.BetaVerificationResponse  -RequestId 089899f13a8f4da7824996191587bab9 `
 -Status SUCCESS `
 -VarError Unable to connect DUO Service during verification
```

- Convert the resource to JSON
```powershell
$VerificationResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

