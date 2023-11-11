# IdentityProfile1
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
**AuthoritativeSource** | [**IdentityProfile1AllOfAuthoritativeSource**](IdentityProfile1AllOfAuthoritativeSource.md) |  | 
**IdentityRefreshRequired** | **Boolean** | True if a identity refresh is needed. Typically triggered when a change on the source has been made. | [optional] [default to $false]
**IdentityCount** | **Int32** | The number of identities that belong to the Identity Profile. | [optional] 
**IdentityAttributeConfig** | [**IdentityAttributeConfig1**](IdentityAttributeConfig1.md) |  | [optional] 
**IdentityExceptionReportReference** | [**IdentityExceptionReportReference1**](IdentityExceptionReportReference1.md) |  | [optional] 
**HasTimeBasedAttr** | **Boolean** | Indicates the value of requiresPeriodicRefresh attribute for the Identity Profile. | [optional] [default to $false]

## Examples

- Prepare the resource
```powershell
$IdentityProfile1 = Initialize-BetaIdentityProfile1  -Id id12345 `
 -Name aName `
 -Created 2015-05-28T14:07:17Z `
 -Modified 2015-05-28T14:07:17Z `
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
$IdentityProfile1 | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

