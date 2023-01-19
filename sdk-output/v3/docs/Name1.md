# Name1
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** | The name of the scheduled search.  | [optional] 
**Description** | **String** | The description of the scheduled search.  | [optional] 

## Examples

- Prepare the resource
```powershell
$Name1 = Initialize-PSSailpointName1  -Name Daily disabled accounts `
 -Description Daily disabled accounts
```

- Convert the resource to JSON
```powershell
$Name1 | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

