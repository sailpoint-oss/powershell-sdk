# SpConfigObject
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ObjectType** | **String** | The object type this configuration is for. | [optional] 
**ResolveByIdUrl** | [**SpConfigUrl**](SpConfigUrl.md) |  | [optional] 
**ResolveByNameUrl** | [**SpConfigUrl[]**](SpConfigUrl.md) | Url and query parameters to be used to resolve this type of object by name. | [optional] 
**ExportUrl** | [**SpConfigUrl**](SpConfigUrl.md) |  | [optional] 
**ExportRight** | **String** | Rights needed by the invoker of sp-config/export in order to export this type of object. | [optional] 
**ExportLimit** | **Int32** | Pagination limit imposed by the target service for this object type. | [optional] 
**ImportUrl** | [**SpConfigUrl**](SpConfigUrl.md) |  | [optional] 
**ImportRight** | **String** | Rights needed by the invoker of sp-config/import in order to import this type of object. | [optional] 
**ImportLimit** | **Int32** | Pagination limit imposed by the target service for this object type. | [optional] 
**ReferenceExtractors** | **String[]** | List of json paths within an exported object of this type that represent references that need to be resolved. | [optional] 
**SignatureRequired** | **Boolean** | If true, this type of object will be JWS signed and cannot be modified before import. | [optional] [default to $false]

## Examples

- Prepare the resource
```powershell
$SpConfigObject = Initialize-BetaSpConfigObject  -ObjectType TRIGGER_SUBSCRIPTION `
 -ResolveByIdUrl null `
 -ResolveByNameUrl null `
 -ExportUrl null `
 -ExportRight idn:trigger-service-subscriptions:read `
 -ExportLimit 10 `
 -ImportUrl null `
 -ImportRight idn:trigger-service-subscriptions:create `
 -ImportLimit 10 `
 -ReferenceExtractors [$.owner] `
 -SignatureRequired false
```

- Convert the resource to JSON
```powershell
$SpConfigObject | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

