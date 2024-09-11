# IdentityProfilesConnections
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | ID of the IdentityProfile this reference applies | [optional] 
**Name** | **String** | Human-readable display name of the IdentityProfile to which this reference applies | [optional] 
**IdentityCount** | **Int64** | The Number of Identities managed by this IdentityProfile | [optional] 

## Examples

- Prepare the resource
```powershell
$IdentityProfilesConnections = Initialize-Tm.V3IdentityProfilesConnections  -Id 76cfddb62818416f816bc494410f46c4 `
 -Name ODS-Identity-Profile `
 -IdentityCount 100
```

- Convert the resource to JSON
```powershell
$IdentityProfilesConnections | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

