# SendAccountVerificationRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**SourceName** | **String** | The source name where identity account password should be reset | [optional] 
**Via** | **String** | The method to send notification | 

## Examples

- Prepare the resource
```powershell
$SendAccountVerificationRequest = Initialize-Tm.BetaSendAccountVerificationRequest  -SourceName Active Directory Source `
 -Via EMAIL_WORK
```

- Convert the resource to JSON
```powershell
$SendAccountVerificationRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

