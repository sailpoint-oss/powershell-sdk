# DependantAppConnectionsAccountSourcePasswordPoliciesInner
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** | DTO type | [optional] 
**Id** | **String** | ID of the object to which this reference applies | [optional] 
**Name** | **String** | Human-readable display name of the object to which this reference applies | [optional] 

## Examples

- Prepare the resource
```powershell
$DependantAppConnectionsAccountSourcePasswordPoliciesInner = Initialize-PSSailpoint.V3DependantAppConnectionsAccountSourcePasswordPoliciesInner  -Type PASSWORD_POLICY `
 -Id 2c91808568c529c60168cca6f90c1313 `
 -Name Policy ODS
```

- Convert the resource to JSON
```powershell
$DependantAppConnectionsAccountSourcePasswordPoliciesInner | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

