# IdentityProfile1AllOf
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
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
$IdentityProfile1AllOf = Initialize-BetaIdentityProfile1AllOf  -Description My custom flat file profile `
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
$IdentityProfile1AllOf | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

