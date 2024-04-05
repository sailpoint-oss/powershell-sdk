# ObjectMappingRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ObjectType** | **String** | Type of the object the mapping value applies to, must be one from enum | 
**JsonPath** | **String** | JSONPath expression denoting the path within the object where the mapping value should be applied | 
**SourceValue** | **String** | Original value at the jsonPath location within the object | 
**TargetValue** | **String** | Value to be assigned at the jsonPath location within the object | 
**Enabled** | **Boolean** | Whether or not this object mapping is enabled | [optional] [default to $false]

## Examples

- Prepare the resource
```powershell
$ObjectMappingRequest = Initialize-PSSailpointObjectMappingRequest  -ObjectType IDENTITY `
 -JsonPath $.name `
 -SourceValue My Governance Group Name `
 -TargetValue My New Governance Group Name `
 -Enabled false
```

- Convert the resource to JSON
```powershell
$ObjectMappingRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

