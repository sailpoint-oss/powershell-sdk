# Identity
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | System-generated unique ID of the Object | [optional] [readonly] 
**Name** | **String** | Name of the Object | 
**Created** | **System.DateTime** | Creation date of the Object | [optional] [readonly] 
**Modified** | **System.DateTime** | Last modification date of the Object | [optional] [readonly] 
**Alias** | **String** | Alternate unique identifier for the identity | [optional] 
**EmailAddress** | **String** | The email address of the identity | [optional] 
**ProcessingState** | **String** | The processing state of the identity | [optional] 
**IdentityStatus** | **String** | The identity&#39;s status in the system | [optional] 
**ManagerRef** | [**IdentityDtoManagerRef**](IdentityDtoManagerRef.md) |  | [optional] 
**IsManager** | **Boolean** | Whether this identity is a manager of another identity | [optional] [default to $false]
**LastRefresh** | **System.DateTime** | The last time the identity was refreshed by the system | [optional] 
**Attributes** | [**SystemCollectionsHashtable**](.md) | A map with the identity attributes for the identity | [optional] 
**LifecycleState** | [**LifecycleStateDto**](LifecycleStateDto.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$Identity = Initialize-BetaIdentity  -Id id12345 `
 -Name aName `
 -Created 2023-01-03T21:16:22.432Z `
 -Modified 2023-01-03T21:16:22.432Z `
 -Alias walter.white `
 -EmailAddress sender@example.com `
 -ProcessingState ERROR `
 -IdentityStatus LOCKED `
 -ManagerRef null `
 -IsManager true `
 -LastRefresh 2020-11-22T15:42:31.123Z `
 -Attributes {&quot;uid&quot;:&quot;Walter White&quot;,&quot;firstname&quot;:&quot;walter&quot;,&quot;cloudStatus&quot;:&quot;UNREGISTERED&quot;,&quot;displayName&quot;:&quot;Walter White&quot;,&quot;identificationNumber&quot;:&quot;942&quot;,&quot;lastSyncDate&quot;:1470348809380,&quot;email&quot;:&quot;walter@gmail.com&quot;,&quot;lastname&quot;:&quot;white&quot;} `
 -LifecycleState null
```

- Convert the resource to JSON
```powershell
$Identity | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

