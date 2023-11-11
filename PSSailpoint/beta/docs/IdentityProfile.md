# IdentityProfile
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | System-generated unique ID of the Object | [optional] [readonly] 
**Name** | **String** | Name of the Object | 
**Created** | **System.DateTime** | Creation date of the Object | [optional] [readonly] 
**Modified** | **System.DateTime** | Last modification date of the Object | [optional] [readonly] 
**Description** | **String** | The description of the Identity Profile. | [optional] 
**Owner** | [**IdentityProfileAllOfOwner**](IdentityProfileAllOfOwner.md) |  | [optional] 
**Priority** | **Int64** | The priority for an Identity Profile. | [optional] 
**AuthoritativeSource** | [**IdentityProfileAllOfAuthoritativeSource**](IdentityProfileAllOfAuthoritativeSource.md) |  | 
**IdentityRefreshRequired** | **Boolean** | True if a identity refresh is needed. Typically triggered when a change on the source has been made | [optional] [default to $false]
**IdentityCount** | **Int32** | The number of identities that belong to the Identity Profile. | [optional] 
**IdentityAttributeConfig** | [**IdentityAttributeConfig**](IdentityAttributeConfig.md) |  | [optional] 
**IdentityExceptionReportReference** | [**IdentityExceptionReportReference**](IdentityExceptionReportReference.md) |  | [optional] 
**HasTimeBasedAttr** | **Boolean** | Indicates the value of requiresPeriodicRefresh attribute for the Identity Profile. | [optional] [default to $true]

## Examples

- Prepare the resource
```powershell
$IdentityProfile = Initialize-BetaIdentityProfile  -Id id12345 `
 -Name aName `
 -Created 2023-01-03T21:16:22.432Z `
 -Modified 2023-01-03T21:16:22.432Z `
 -Description My custom flat file profile `
 -Owner null `
 -Priority 10 `
 -AuthoritativeSource null `
 -IdentityRefreshRequired true `
 -IdentityCount 8 `
 -IdentityAttributeConfig null `
 -IdentityExceptionReportReference null `
 -HasTimeBasedAttr true
```

- Convert the resource to JSON
```powershell
$IdentityProfile | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

