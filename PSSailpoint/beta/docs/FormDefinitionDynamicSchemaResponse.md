# FormDefinitionDynamicSchemaResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**OutputSchema** | [**System.Collections.Hashtable**](SystemCollectionsHashtable.md) | OutputSchema holds a JSON schema generated dynamically | [optional] 

## Examples

- Prepare the resource
```powershell
$FormDefinitionDynamicSchemaResponse = Initialize-BetaFormDefinitionDynamicSchemaResponse  -OutputSchema {outputSchema&#x3D;{$schema&#x3D;https://json-schema.org/draft/2020-12/schema, additionalProperties&#x3D;false, properties&#x3D;{firstName&#x3D;{title&#x3D;First Name, type&#x3D;string}, fullName&#x3D;{title&#x3D;Full Name, type&#x3D;string}, lastName&#x3D;{title&#x3D;Last Name, type&#x3D;string}, startDate&#x3D;{format&#x3D;date-time, title&#x3D;Start Date, type&#x3D;string}}, type&#x3D;object}}
```

- Convert the resource to JSON
```powershell
$FormDefinitionDynamicSchemaResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

