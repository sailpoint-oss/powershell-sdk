# AccessCriteriaCriteriaListInner
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** | DTO type | [optional] 
**Id** | **String** | ID of the object to which this reference applies to | [optional] 
**Name** | **String** | Human-readable display name of the object to which this reference applies to | [optional] 

## Examples

- Prepare the resource
```powershell
$AccessCriteriaCriteriaListInner = Initialize-PSSailpoint.BetaAccessCriteriaCriteriaListInner  -Type ENTITLEMENT `
 -Id 2c91808568c529c60168cca6f90c1313 `
 -Name Administrator
```

- Convert the resource to JSON
```powershell
$AccessCriteriaCriteriaListInner | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

