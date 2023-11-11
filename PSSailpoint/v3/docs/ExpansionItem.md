# ExpansionItem
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AccountId** | **String** | The ID of the account | [optional] 
**Cause** | **String** |  | [optional] 
**Name** | **String** | The name of the item | [optional] 
**AttributeRequests** | [**AttributeRequest[]**](AttributeRequest.md) |  | [optional] 
**Source** | [**AccountSource**](AccountSource.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ExpansionItem = Initialize-ExpansionItem  -AccountId 2c91808981f58ea601821c3e93482e6f `
 -Cause Role `
 -Name smartsheet-role `
 -AttributeRequests null `
 -Source null
```

- Convert the resource to JSON
```powershell
$ExpansionItem | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

