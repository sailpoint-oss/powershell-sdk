# SlimAccountAllOf
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Uuid** | **String** | Unique ID from the owning source | [optional] 
**NativeIdentity** | **String** | The native identifier of the account | [optional] 
**Description** | **String** | The description for the account | [optional] 
**Disabled** | **Boolean** | Whether the account is disabled | [optional] 
**Locked** | **Boolean** | Whether the account is locked | [optional] 
**ManuallyCorrelated** | **Boolean** | Whether the account was manually correlated | [optional] 
**HasEntitlements** | **Boolean** | Whether the account has any entitlements associated with it | [optional] 
**SourceId** | **String** | The ID of the source for which this account belongs | [optional] 
**IdentityId** | **String** | The ID of the identity for which this account is correlated to if not uncorrelated | [optional] 
**Attributes** | [**SystemCollectionsHashtable**](.md) | A map containing attributes associated with the account | [optional] 

## Examples

- Prepare the resource
```powershell
$SlimAccountAllOf = Initialize-PSSailpointBetaSlimAccountAllOf  -Uuid null `
 -NativeIdentity brandin.gray `
 -Description Brandin Gray the CEO of Silly Inc. `
 -Disabled false `
 -Locked false `
 -ManuallyCorrelated false `
 -HasEntitlements true `
 -SourceId 2c9180835d2e5168015d32f890ca1581 `
 -IdentityId 4b9163835d2e5168015d32f890ca5936 `
 -Attributes null
```

- Convert the resource to JSON
```powershell
$SlimAccountAllOf | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

