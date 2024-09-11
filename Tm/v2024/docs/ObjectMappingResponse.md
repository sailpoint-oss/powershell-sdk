# ObjectMappingResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ObjectMappingId** | **String** | Id of the object mapping | [optional] 
**ObjectType** | **String** | Type of the object the mapping value applies to | [optional] 
**JsonPath** | **String** | JSONPath expression denoting the path within the object where the mapping value should be applied | [optional] 
**SourceValue** | **String** | Original value at the jsonPath location within the object | [optional] 
**TargetValue** | **String** | Value to be assigned at the jsonPath location within the object | [optional] 
**Enabled** | **Boolean** | Whether or not this object mapping is enabled | [optional] [default to $false]
**Created** | **String** | Object mapping creation timestamp | [optional] 
**Modified** | **String** | Object mapping latest update timestamp | [optional] 

## Examples

- Prepare the resource
```powershell
$ObjectMappingResponse = Initialize-Tm.V2024ObjectMappingResponse  -ObjectMappingId 3d6e0144-963f-4bd6-8d8d-d77b4e507ce4 `
 -ObjectType IDENTITY `
 -JsonPath $.name `
 -SourceValue My Governance Group Name `
 -TargetValue My New Governance Group Name `
 -Enabled false `
 -Created 2024-03-19T23:18:53.732Z `
 -Modified 2024-03-19T23:18:53.732Z
```

- Convert the resource to JSON
```powershell
$ObjectMappingResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

