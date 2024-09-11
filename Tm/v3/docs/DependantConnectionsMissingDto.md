# DependantConnectionsMissingDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**DependencyType** | **String** | The type of dependency type that is missing in the SourceConnections | [optional] 
**Reason** | **String** | The reason why this dependency is missing | [optional] 

## Examples

- Prepare the resource
```powershell
$DependantConnectionsMissingDto = Initialize-Tm.V3DependantConnectionsMissingDto  -DependencyType dependantApps `
 -Reason If there was an error retrieving any dependencies, it would lbe listed here
```

- Convert the resource to JSON
```powershell
$DependantConnectionsMissingDto | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

