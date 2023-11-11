# AccountCorrelated
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Identity** | [**AccountCorrelatedIdentity**](AccountCorrelatedIdentity.md) |  | 
**Source** | [**AccountCorrelatedSource**](AccountCorrelatedSource.md) |  | 
**Account** | [**AccountCorrelatedAccount**](AccountCorrelatedAccount.md) |  | 
**Attributes** | [**System.Collections.Hashtable**](AnyType.md) | The attributes associated with the account.  Attributes are unique per source. | 
**EntitlementCount** | **Int32** | The number of entitlements associated with this account. | [optional] 

## Examples

- Prepare the resource
```powershell
$AccountCorrelated = Initialize-BetaAccountCorrelated  -Identity null `
 -Source null `
 -Account null `
 -Attributes {sn&#x3D;doe, givenName&#x3D;john, memberOf&#x3D;[cn&#x3D;g1,ou&#x3D;groups,dc&#x3D;acme,dc&#x3D;com, cn&#x3D;g2,ou&#x3D;groups,dc&#x3D;acme,dc&#x3D;com, cn&#x3D;g3,ou&#x3D;groups,dc&#x3D;acme,dc&#x3D;com]} `
 -EntitlementCount 0
```

- Convert the resource to JSON
```powershell
$AccountCorrelated | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

