# RoleInsightsInsight
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** | The number of identities in this role with the entitlement. | [optional] 
**IdentitiesWithAccess** | **Int32** | The number of identities in this role with the entitlement. | [optional] 
**IdentitiesImpacted** | **Int32** | The number of identities in this role that do not have the specified entitlement. | [optional] 
**TotalNumberOfIdentities** | **Int32** | The total number of identities. | [optional] 

## Examples

- Prepare the resource
```powershell
$RoleInsightsInsight = Initialize-BetaRoleInsightsInsight  -Type ADD `
 -IdentitiesWithAccess 850 `
 -IdentitiesImpacted 150 `
 -TotalNumberOfIdentities 1000
```

- Convert the resource to JSON
```powershell
$RoleInsightsInsight | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

