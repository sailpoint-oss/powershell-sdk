# NonEmployeeSourceLiteWithSchemaAttributesAllOf
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**SchemaAttributes** | [**NonEmployeeSchemaAttribute[]**](NonEmployeeSchemaAttribute.md) | List of schema attributes associated with this non-employee source. | [optional] 

## Examples

- Prepare the resource
```powershell
$NonEmployeeSourceLiteWithSchemaAttributesAllOf = Initialize-NonEmployeeSourceLiteWithSchemaAttributesAllOf  -SchemaAttributes null
```

- Convert the resource to JSON
```powershell
$NonEmployeeSourceLiteWithSchemaAttributesAllOf | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

