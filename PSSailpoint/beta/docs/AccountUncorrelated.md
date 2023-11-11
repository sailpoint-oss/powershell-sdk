# AccountUncorrelated
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Identity** | [**AccountUncorrelatedIdentity**](AccountUncorrelatedIdentity.md) |  | 
**Source** | [**AccountUncorrelatedSource**](AccountUncorrelatedSource.md) |  | 
**Account** | [**AccountUncorrelatedAccount**](AccountUncorrelatedAccount.md) |  | 
**EntitlementCount** | **Int32** | The number of entitlements associated with this account. | [optional] 

## Examples

- Prepare the resource
```powershell
$AccountUncorrelated = Initialize-BetaAccountUncorrelated  -Identity null `
 -Source null `
 -Account null `
 -EntitlementCount 0
```

- Convert the resource to JSON
```powershell
$AccountUncorrelated | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

