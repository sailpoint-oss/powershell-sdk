# DkimAttributes
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | UUID associated with domain to be verified | [optional] 
**Address** | **String** | The identity or domain address | [optional] 
**DkimEnabled** | **Boolean** | Whether or not DKIM has been enabled for this domain / identity | [optional] [default to $false]
**DkimTokens** | **String[]** | The tokens to be added to a DNS for verification | [optional] 
**DkimVerificationStatus** | **String** | The current status if the domain /identity has been verified. Ie Success, Failed, Pending | [optional] 

## Examples

- Prepare the resource
```powershell
$DkimAttributes = Initialize-BetaDkimAttributes  -Id 123b45b0-aaaa-bbbb-a7db-123456a56abc `
 -Address BobSmith@sailpoint.com `
 -DkimEnabled true `
 -DkimTokens [uq1m3jjk25ckd3whl4n7y46c56r5l6aq, u7pm38jky9ckdawhlsn7y4dcj6f5lpgq, uhpm3jjkjjckdkwhlqn7yw6cjer5tpay] `
 -DkimVerificationStatus Success
```

- Convert the resource to JSON
```powershell
$DkimAttributes | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

