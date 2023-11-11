# FullAccountAllOf
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Authoritative** | **Boolean** | Whether this account belongs to an authoritative source | [optional] 
**SystemAccount** | **Boolean** | Whether this account is for the IdentityNow source | [optional] 
**Uncorrelated** | **Boolean** | True if this account is not correlated to an identity | [optional] 
**Features** | **String** | A string list containing the owning source&#39;s features | [optional] 

## Examples

- Prepare the resource
```powershell
$FullAccountAllOf = Initialize-BetaFullAccountAllOf  -Authoritative false `
 -SystemAccount false `
 -Uncorrelated false `
 -Features ENABLE
```

- Convert the resource to JSON
```powershell
$FullAccountAllOf | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

