# IdentityDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
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
$IdentityDto = Initialize-BetaIdentityDto  -Alias walter.white `
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
$IdentityDto | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

