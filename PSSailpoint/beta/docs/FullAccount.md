# FullAccount
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | System-generated unique ID of the Object | [optional] [readonly] 
**Name** | **String** | Name of the Object | 
**Created** | **System.DateTime** | Creation date of the Object | [optional] [readonly] 
**Modified** | **System.DateTime** | Last modification date of the Object | [optional] [readonly] 
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
**Authoritative** | **Boolean** | Whether this account belongs to an authoritative source | [optional] 
**SystemAccount** | **Boolean** | Whether this account is for the IdentityNow source | [optional] 
**Uncorrelated** | **Boolean** | True if this account is not correlated to an identity | [optional] 
**Features** | **String** | A string list containing the owning source&#39;s features | [optional] 

## Examples

- Prepare the resource
```powershell
$FullAccount = Initialize-PSSailpointBetaFullAccount  -Id id12345 `
 -Name aName `
 -Created null `
 -Modified null `
 -Uuid null `
 -NativeIdentity brandin.gray `
 -Description Brandin Gray the CEO of Silly Inc. `
 -Disabled false `
 -Locked false `
 -ManuallyCorrelated false `
 -HasEntitlements true `
 -SourceId 2c9180835d2e5168015d32f890ca1581 `
 -IdentityId 4b9163835d2e5168015d32f890ca5936 `
 -Attributes null `
 -Authoritative false `
 -SystemAccount false `
 -Uncorrelated false `
 -Features ENABLE
```

- Convert the resource to JSON
```powershell
$FullAccount | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

