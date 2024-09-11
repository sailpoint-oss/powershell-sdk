# Identity
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | System-generated unique ID of the identity | [optional] [readonly] 
**Name** | **String** | The identity&#39;s name is equivalent to its Display Name attribute. | 
**Created** | **System.DateTime** | Creation date of the identity | [optional] [readonly] 
**Modified** | **System.DateTime** | Last modification date of the identity | [optional] [readonly] 
**Alias** | **String** | The identity&#39;s alternate unique identifier is equivalent to its Account Name on the authoritative source account schema. | [optional] 
**EmailAddress** | **String** | The email address of the identity | [optional] 
**ProcessingState** | **String** | The processing state of the identity | [optional] 
**IdentityStatus** | **String** | The identity&#39;s status in the system | [optional] 
**ManagerRef** | [**IdentityManagerRef**](IdentityManagerRef.md) |  | [optional] 
**IsManager** | **Boolean** | Whether this identity is a manager of another identity | [optional] [default to $false]
**LastRefresh** | **System.DateTime** | The last time the identity was refreshed by the system | [optional] 
**Attributes** | [**SystemCollectionsHashtable**](.md) | A map with the identity attributes for the identity | [optional] 
**LifecycleState** | [**IdentityLifecycleState**](IdentityLifecycleState.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$Identity = Initialize-Tm.BetaIdentity  -Id 01f04e428c484542a241dc89c303b178 `
 -Name Walter White `
 -Created 2023-01-03T21:16:22.432Z `
 -Modified 2023-01-03T21:16:22.432Z `
 -Alias walter.white `
 -EmailAddress walter.white@example.com `
 -ProcessingState ERROR `
 -IdentityStatus LOCKED `
 -ManagerRef null `
 -IsManager true `
 -LastRefresh 2020-11-22T15:42:31.123Z `
 -Attributes {uid&#x3D;86754, firstname&#x3D;Walter, cloudStatus&#x3D;UNREGISTERED, displayName&#x3D;Walter White, identificationNumber&#x3D;86754, lastSyncDate&#x3D;1470348809380, email&#x3D;walter.white@example.com, lastname&#x3D;White} `
 -LifecycleState null
```

- Convert the resource to JSON
```powershell
$Identity | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

