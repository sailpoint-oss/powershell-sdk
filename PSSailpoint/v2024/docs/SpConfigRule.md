# SpConfigRule
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Path** | **String** | JSONPath expression denoting the path within the object where a value substitution should be applied | [optional] 
**Value** | [**SystemCollectionsHashtable**](.md) | Value to be assigned at the jsonPath location within the object | [optional] 
**Mode** | **String[]** | Draft modes to which this rule will apply | [optional] 

## Examples

- Prepare the resource
```powershell
$SpConfigRule = Initialize-PSSailpoint.V2024SpConfigRule  -Path $.enabled `
 -Value null `
 -Mode [RESTORE, PROMOTE]
```

- Convert the resource to JSON
```powershell
$SpConfigRule | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

