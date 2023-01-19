# AccountAllOf
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**SourceId** | **String** |  | [optional] 
**IdentityId** | **String** |  | [optional] 
**Attributes** | [**System.Collections.Hashtable**](AnyType.md) |  | [optional] 
**Authoritative** | **Boolean** | Indicates if this account is from an authoritative source | [optional] 
**Description** | **String** | A description of the account | [optional] 
**Disabled** | **Boolean** | Indicates if the account is currently disabled | [optional] 
**Locked** | **Boolean** | Indicates if the account is currently locked | [optional] 
**NativeIdentity** | **String** |  | [optional] 
**SystemAccount** | **Boolean** |  | [optional] 
**Uncorrelated** | **Boolean** | Indicates if this account is not correlated to an identity | [optional] 
**Uuid** | **String** | The unique ID of the account as determined by the account schema | [optional] 
**ManuallyCorrelated** | **Boolean** | Indicates if the account has been manually correlated to an identity | [optional] 
**HasEntitlements** | **Boolean** | Indicates if the account has entitlements | [optional] 

## Examples

- Prepare the resource
```powershell
$AccountAllOf = Initialize-PSSailpointAccountAllOf  -SourceId 2c9180835d2e5168015d32f890ca1581 `
 -IdentityId 2c9180835d2e5168015d32f890ca1581 `
 -Attributes {firstName&#x3D;SailPoint, lastName&#x3D;Support, displayName&#x3D;SailPoint Support} `
 -Authoritative false `
 -Description null `
 -Disabled false `
 -Locked false `
 -NativeIdentity 552775 `
 -SystemAccount false `
 -Uncorrelated false `
 -Uuid slpt.support `
 -ManuallyCorrelated false `
 -HasEntitlements true
```

- Convert the resource to JSON
```powershell
$AccountAllOf | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

