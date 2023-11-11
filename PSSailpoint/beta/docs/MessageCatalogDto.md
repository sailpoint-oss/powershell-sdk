# MessageCatalogDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Locale** | **String** | The language in which the messages are returned | [optional] 
**Messages** | [**ResourceBundleMessage[]**](ResourceBundleMessage.md) | The list of message with their keys and formats | [optional] 

## Examples

- Prepare the resource
```powershell
$MessageCatalogDto = Initialize-BetaMessageCatalogDto  -Locale en_US `
 -Messages null
```

- Convert the resource to JSON
```powershell
$MessageCatalogDto | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

