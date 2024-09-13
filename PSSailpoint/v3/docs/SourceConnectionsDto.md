# SourceConnectionsDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**IdentityProfiles** | [**IdentityProfilesConnections[]**](IdentityProfilesConnections.md) | The IdentityProfile attached to this source | [optional] 
**CredentialProfiles** | **String[]** | Name of the CredentialProfile attached to this source | [optional] 
**SourceAttributes** | **String[]** | The attributes attached to this source | [optional] 
**MappingProfiles** | **String[]** | The profiles attached to this source | [optional] 
**DependentCustomTransforms** | [**Transform[]**](Transform.md) |  | [optional] 
**DependentApps** | [**DependantAppConnections[]**](DependantAppConnections.md) |  | [optional] 
**MissingDependents** | [**DependantConnectionsMissingDto[]**](DependantConnectionsMissingDto.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$SourceConnectionsDto = Initialize-PSSailpoint.V3SourceConnectionsDto  -IdentityProfiles null `
 -CredentialProfiles null `
 -SourceAttributes null `
 -MappingProfiles [ODS-AD-Profile, ODS-Profile2] `
 -DependentCustomTransforms null `
 -DependentApps null `
 -MissingDependents null
```

- Convert the resource to JSON
```powershell
$SourceConnectionsDto | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

