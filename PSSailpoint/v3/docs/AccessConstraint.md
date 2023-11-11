# AccessConstraint
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** | Type of Access | 
**Ids** | **String[]** | Must be set only if operator is SELECTED. | [optional] 
**Operator** | **String** | Used to determine whether the scope of the campaign should be reduced for selected ids or all. | 

## Examples

- Prepare the resource
```powershell
$AccessConstraint = Initialize-AccessConstraint  -Type ENTITLEMENT `
 -Ids [2c90ad2a70ace7d50170acf22ca90010] `
 -Operator SELECTED
```

- Convert the resource to JSON
```powershell
$AccessConstraint | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

