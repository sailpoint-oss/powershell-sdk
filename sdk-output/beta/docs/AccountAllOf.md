# AccountAllOf
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**SourceId** | **String** |  | [optional] 
**IdentityId** | **String** |  | [optional] 
**Attributes** | [**SystemCollectionsHashtable**](.md) |  | [optional] 
**Authoritative** | **Boolean** |  | [optional] 
**Description** | **String** |  | [optional] 
**Disabled** | **Boolean** |  | [optional] 
**Locked** | **Boolean** |  | [optional] 
**NativeIdentity** | **String** |  | [optional] 
**SystemAccount** | **Boolean** |  | [optional] 
**Uncorrelated** | **Boolean** |  | [optional] 
**Uuid** | **String** |  | [optional] 
**ManuallyCorrelated** | **Boolean** |  | [optional] 
**HasEntitlements** | **Boolean** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$AccountAllOf = Initialize-PSSailpointBetaAccountAllOf  -SourceId 2c9180835d2e5168015d32f890ca1581 `
 -IdentityId 2c9180835d2e5168015d32f890ca1581 `
 -Attributes null `
 -Authoritative null `
 -Description null `
 -Disabled null `
 -Locked null `
 -NativeIdentity null `
 -SystemAccount null `
 -Uncorrelated null `
 -Uuid null `
 -ManuallyCorrelated null `
 -HasEntitlements null
```

- Convert the resource to JSON
```powershell
$AccountAllOf | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

