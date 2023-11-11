# ListApplications200ResponseInnerAccountServicePoliciesInner
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**PolicyId** | **String** |  | [optional] 
**PolicyName** | **String** |  | [optional] 
**Selectors** | [**SystemCollectionsHashtable**](.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ListApplications200ResponseInnerAccountServicePoliciesInner = Initialize-CCListApplications200ResponseInnerAccountServicePoliciesInner  -PolicyId null `
 -PolicyName null `
 -Selectors null
```

- Convert the resource to JSON
```powershell
$ListApplications200ResponseInnerAccountServicePoliciesInner | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

