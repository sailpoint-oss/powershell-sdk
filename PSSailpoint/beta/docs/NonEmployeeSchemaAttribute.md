# NonEmployeeSchemaAttribute
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | Schema Attribute Id | [optional] 
**System** | **Boolean** | True if this schema attribute is mandatory on all non-employees sources. | [optional] 
**Modified** | **System.DateTime** | When the schema attribute was last modified. | [optional] 
**Created** | **System.DateTime** | When the schema attribute was created. | [optional] 
**Type** | [**NonEmployeeSchemaAttributeType**](NonEmployeeSchemaAttributeType.md) |  | 
**Label** | **String** | Label displayed on the UI for this schema attribute. | 
**TechnicalName** | **String** | The technical name of the attribute. Must be unique per source. | 
**HelpText** | **String** | help text displayed by UI. | [optional] 
**Placeholder** | **String** | Hint text that fills UI box. | [optional] 
**Required** | **Boolean** | If true, the schema attribute is required for all non-employees in the source | [optional] 

## Examples

- Prepare the resource
```powershell
$NonEmployeeSchemaAttribute = Initialize-PSSailpoint.BetaNonEmployeeSchemaAttribute  -Id ac110005-7156-1150-8171-5b292e3e0084 `
 -System true `
 -Modified 2019-08-23T18:52:59.162Z `
 -Created 2019-08-23T18:40:35.772Z `
 -Type null `
 -Label Account Name `
 -TechnicalName account.name `
 -HelpText The unique identifier for the account `
 -Placeholder Enter a unique user name for this account. `
 -Required true
```

- Convert the resource to JSON
```powershell
$NonEmployeeSchemaAttribute | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

