# DataAccess
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Policies** | [**DataAccessPoliciesInner[]**](DataAccessPoliciesInner.md) | List of classification policies that apply to resources the entitlement \ groups has access to | [optional] 
**Categories** | [**DataAccessCategoriesInner[]**](DataAccessCategoriesInner.md) | List of classification categories that apply to resources the entitlement \ groups has access to | [optional] 
**ImpactScore** | [**DataAccessImpactScore**](DataAccessImpactScore.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$DataAccess = Initialize-DataAccess  -Policies null `
 -Categories null `
 -ImpactScore null
```

- Convert the resource to JSON
```powershell
$DataAccess | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

