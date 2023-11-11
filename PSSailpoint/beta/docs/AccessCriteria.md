# AccessCriteria
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** | Business name for the access construct list | [optional] 
**CriteriaList** | [**AccessCriteriaCriteriaListInner[]**](AccessCriteriaCriteriaListInner.md) | List of criteria.  There is a min of 1 and max of 50 items in the list. | [optional] 

## Examples

- Prepare the resource
```powershell
$AccessCriteria = Initialize-BetaAccessCriteria  -Name money-in `
 -CriteriaList [{type&#x3D;ENTITLEMENT, id&#x3D;2c9180866166b5b0016167c32ef31a66, name&#x3D;Administrator}, {type&#x3D;ENTITLEMENT, id&#x3D;2c9180866166b5b0016167c32ef31a67, name&#x3D;Administrator}]
```

- Convert the resource to JSON
```powershell
$AccessCriteria | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

