# NonEmployeeSchemaAttributeBody
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** | Type of the attribute. Only type &#39;TEXT&#39; is supported for custom attributes. | 
**Label** | **String** | Label displayed on the UI for this schema attribute. | 
**TechnicalName** | **String** | The technical name of the attribute. Must be unique per source. | 
**HelpText** | **String** | help text displayed by UI. | [optional] 
**Placeholder** | **String** | Hint text that fills UI box. | [optional] 
**Required** | **Boolean** | If true, the schema attribute is required for all non-employees in the source | [optional] 

## Examples

- Prepare the resource
```powershell
$NonEmployeeSchemaAttributeBody = Initialize-BetaNonEmployeeSchemaAttributeBody  -Type TEXT `
 -Label Account Name `
 -TechnicalName account.name `
 -HelpText The unique identifier for the account `
 -Placeholder Enter a unique user name for this account. `
 -Required true
```

- Convert the resource to JSON
```powershell
$NonEmployeeSchemaAttributeBody | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

