# SourceSchemasInner
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** | Type of object being referenced. | [optional] 
**Id** | **String** | Schema ID. | [optional] 
**Name** | **String** | Schema&#39;s human-readable display name. | [optional] 

## Examples

- Prepare the resource
```powershell
$SourceSchemasInner = Initialize-PSSailpoint.BetaSourceSchemasInner  -Type CONNECTOR_SCHEMA `
 -Id 2c91808568c529c60168cca6f90c1777 `
 -Name MySchema
```

- Convert the resource to JSON
```powershell
$SourceSchemasInner | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

