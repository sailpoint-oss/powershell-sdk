# FormDefinitionDynamicSchemaRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Attributes** | [**FormDefinitionDynamicSchemaRequestAttributes**](FormDefinitionDynamicSchemaRequestAttributes.md) |  | [optional] 
**Description** | **String** | Description is the form definition dynamic schema description text | [optional] 
**Id** | **String** | ID is a unique identifier | [optional] 
**Type** | **String** | Type is the form definition dynamic schema type | [optional] 
**VersionNumber** | **Int64** | VersionNumber is the form definition dynamic schema version number | [optional] 

## Examples

- Prepare the resource
```powershell
$FormDefinitionDynamicSchemaRequest = Initialize-Tm.V2024FormDefinitionDynamicSchemaRequest  -Attributes null `
 -Description A description `
 -Id 00000000-0000-0000-0000-000000000000 `
 -Type action `
 -VersionNumber 1
```

- Convert the resource to JSON
```powershell
$FormDefinitionDynamicSchemaRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

