# AccountUncorrelated
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Identity** | [**TriggerInputAccountUncorrelatedIdentity**](TriggerInputAccountUncorrelatedIdentity.md) |  | 
**Source** | [**TriggerInputAccountUncorrelatedSource**](TriggerInputAccountUncorrelatedSource.md) |  | 
**Account** | [**TriggerInputAccountUncorrelatedAccount**](TriggerInputAccountUncorrelatedAccount.md) |  | 
**EntitlementCount** | **Int32** | The number of entitlements associated with this account. | [optional] 

## Examples

- Prepare the resource
```powershell
$AccountUncorrelated = Initialize-PSSailpointBetaAccountUncorrelated  -Identity null `
 -Source null `
 -Account null `
 -EntitlementCount 0
```

- Convert the resource to JSON
```powershell
$AccountUncorrelated | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

